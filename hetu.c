/* Tämä ohjelma tarkistaa henkilötunnuksen oikeellisuuden.  Sen on
   kirjoittanut Antti-Juhani Kaijanaho (gaia@iki.fi) 1999-02-21.
   Ohjelmaa saadaan käyttää, muuttaa ja levittää vapaasti, kunhan
   ohjeman tekijä ja mahdollisten muutosten tekijät mainitaan
   asianmukaisesti.

   Henkilötunnus luetaan komentoriviltä.  Sen oikeellisuus tulostetaan
   standardisyötevirtaan, ja ohjelman paluuarvo kertoo onnistumisesta
   vain silloin, kun kaikki annnetut henkilötunnukset ovat OK.

   Ohjelma on pyritty kirjoittamaan ISO-standardin mukaisella C:llä.
   Ohjelman teossa on pyritty välttämään oletuksia käytössä olevasta
   ympäristöstä (esim. merkistöasiat), joten ohjelman pitäisi olla
   maksimaalisen portattava.

   OHJELMAN TEKIJÄ EI OTA OHJELMAN TOIMINNAN OIKEELLISUUDESTA
   MINKÄÄNLAISTA VASTUUTA.

   Muutokset:
         1999-02-21 gaia@iki.fi: paivays_ok
            Korjattu off by one -virhe taulukon indeksoinnissa.

*/

#include <assert.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Palauttaa toden, mikäli b jakaa a:n.  */
int
jakaa (int a, int b)
{
  return a % b == 0;
}

/* Palauttaa toden, mikäli n on a:n ja b:n välissä.  Oletus: a <= b.*/
int
valissa (int n, int a, int b)
{
  assert (a <= b);
  return a <= n && n <= b;
}

/* Toimii vain gregoriaanisella kalenterilla.  Gregoriaaninen
   kalenteri syntyi 1582.  */
int
karkausvuosi (int vuosi)
{
  assert (vuosi >= 1582);

  return (jakaa (vuosi, 4) && (!jakaa (vuosi, 100) || jakaa (vuosi, 400)));
}

/* Onko päiväys p.kk.v validi? */
int
paivays_ok (int p, int kk, int v)
{
  /* Tämä on päiviä kuukaudessa -taulukko; ensimmäinen dimensio
     valitsee karkausvuoden (1) ja tavallisen vuoden (0) välillä. */
  static p_kk [2] [12] = {
    { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 },
    { 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 } };

  return valissa (kk, 1, 12)
    && valissa (p, 1, p_kk [karkausvuosi (v) ? 1 : 0] [kk - 1]);
}

/* Muutetaan numeromerki c numeroksi.  Mikäli c ei ole numeromerkki,
   palautetaan INT_MIN.  */
int
char2digit (char c)
{
  switch (c)
    {
    case '0': return 0;
    case '1': return 1;
    case '2': return 2;
    case '3': return 3;
    case '4': return 4;
    case '5': return 5;
    case '6': return 6;
    case '7': return 7;
    case '8': return 8;
    case '9': return 9;
    default:
      return INT_MIN;
    }
}

/* Muutetaan merkkijono s (josta huomioidaan enintään n merkkiä ja
   merkki ignore jätetään huomiotta) ei-negatiiviseksi luvuksi.
   Palautetaan LONG_MIN virhetapauksessa.  */
long
str2long (const char * s, size_t n, int ignore)
{
  long rv = 0;
  int i;

  assert (s != 0);

  for (i = 0; s [i] != 0 && i < n; i++)
    {
      int c2d;

      if (i == ignore)
        continue;

      c2d = char2digit (s [i]);
      if (c2d == INT_MIN)
        return LONG_MIN;

      rv = rv * 10 + c2d;
    }

  return rv;
}

int
hetu_ok (const char * hetu)
{
  int vuosisata;
  const int VSM = 6;  /* vuosisatamerkin indeksi */
  const int TM = 10;  /* tarkistemerkin indeksi */
  static const char tarkmerk [] = "0123456789ABCDEFHJKLMNPRSTUVWXY";

  if (strlen (hetu) != TM + 1)
    return 0;

  /* Tarkistetaan vuosisatamerkki.  */
  switch (hetu [VSM])
    {
    case '-':
      vuosisata = 1900; break;
    case '+':
      vuosisata = 1800; break;
    case 'A':
      vuosisata = 2000; break;
    default:
      return 0;
    }

  /* Tarkistetaan päiväys. */
  if (!paivays_ok (str2long (hetu, 2, -1),
                   str2long (hetu + 2, 2, -1),
                   str2long (hetu + 4, 2, -1) + vuosisata))
    return 0;

  /* Tarkistetaan tarkiste. */
  return hetu [TM] == tarkmerk [str2long (hetu, TM, VSM) % 31];
}

int
main (int argc, char * argv [])
{
  int i;
  int rv = EXIT_SUCCESS;

  for (i = 1; i < argc; i++)
    {
      int ok;

      ok = hetu_ok (argv[i]);

      printf ("%s: %s\n", argv [i], ok ? "OK" : "Virhe");

      rv = ok ? rv : EXIT_FAILURE;
    }

  return rv;
}
