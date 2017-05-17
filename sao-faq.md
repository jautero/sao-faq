# Yleistä


## Olemisen tarkoitus


Tämän dokumentin on tarkoitus vastata sellaisiin keskusteluryhmissä
`sfnet.atk.ohjelmointi` usein esitettyihin kysymyksiin, joihin ei ole
järkevää vastata tai joihin ei ole vielä vastattu kansainvälisissä
FAQ:eissa. Tämä tarkoittaa sitä, että tämä FAQ ei juurikaan käsittele
esimerkiksi ohjelmointikieliä eikä numeerisia menetelmiä. Tässä
artikkelissa käsitellään myös hieman ryhmissä noudatettavia
käyttäytymissääntöjä.

Ohjelmoinnin ja ohjelmointikielten alkeita käsitellään ryhmän
`sfnet.atk.ohjelmointi.alkeet`
[FAQ:ssa](https://jautero.github.io/sao-faq/saoa-faq.html)

Edellä esitettyjen rajausten vuoksi tämä FAQ käsittelee lähinnä
sellaisia algoritmeja, joiden käyttöönoton taustalla on hallinnollinen
tai poliittinen päätös.

Mistä tämän FAQin saa?
======================

Yleensä tähän kysymykseen vastataan: "Luet sitä nyt juuri, joten
*säilytä* hallussasi oleva kappale."

Uusin versio on aina löydettävissä FAQin
[seittisivulta](https://jautero.github.io/sao-faq/sao-faq.html).

Tämä dokumentti on olemassa myös tekstiversiona ([ilman
korostuksia](https://jautero.github.io/sao-faq/sao-faq.txt) ja
[korostuksineen](https://jautero.github.io/sao-faq/sao-faq.tov)).

Myös FAQin [SGML-sorsat](https://jautero.github.io/sao-faq/sao-faq.sgml)
ovat saatavilla. Tarvitset niiden käsittelemiseen uudehkon
[Debiandoc-SGML-paketin](http://www.debian.org/Packages/unstable/text/debiandoc-sgml.html),
joka toiminee ainakin kaikissa Unixeissa.

Kaikissa ylläolevissa osoitteissa on aina FAQin uusin julkaistu versio.

Kirjoitelmaan tehdyt muutokset löytyvät [GNU
ChangeLog](https://jautero.github.io/sao-faq/ChangeLog) sekä
[HTML](https://jautero.github.io/sao-faq/changelog.html)-muodossa.

Tämä FAQ pyritään postaamaan joka kuukauden 17. päivänä uutisryhmään
`sfnet.atk.ohjelmointi`.

Missä ja mitä voin kysyä?
=========================

Ennenkuin kysyt, tarkista, onko kysymykseesi vastattu tässä
kirjoitelmassa.

Uutisryhmä `sfnet.atk.ohjelmointi` on tarkoitettu tietokoneen
ohjelmoinnin yhteydessä esiin nousseiden aiheiden käsittelyyn.
Virallisen kuvauksen mukaan ryhmään sopii "kaikenlainen ohjelmointiin
vaan ei valmiiden ohjelmien käyttöön liittyvä keskustelu: algoritmit,
ohjelmointikielet, työkalut, ohjelmien suunnittelu, määrittely,
testaus jne."

Uutisryhmä `sfnet.atk.ohjelmointi.moderoitu` on yllämainitun ryhmän
moderoitu versio, joka poistettiin moderointisoftan lakattua toimimasta
eikä sitä ole enää syytä käyttää.

Keväällä 1998 perustettiin uutisryhmä `sfnet.atk.ohjelmointi.alkeet`.
Ryhmän virallinen kuvaus kertoo, että se "on tarkoitettu ohjelmointia
aloitteleville tai sellaisille, jotka tutustuvat itselleen uuteen
ohjelmoinnin osa-alueeseen". Hyvä nyrkkisääntö on, että jos jotain
kysymystä käsitellään hyvin osa-alueen perusoppikirjoissa, se kuuluu
alkeet-ryhmään. Toisaalta se, että vuosia ohjelmoinut ihminen ei
kohtuullisella vaivalla löydä ratkaisua ongelmaansa, on kohtuullisen
hyvä merkki siitä, että kysymys ei ole alkeista. Alkeet-ryhmällä on [oma
FAQ](https://jautero.github.io/sao-faq/saoa-faq.html).

*HTML-kieleen liittyvät kysymykset eivät kuulu mihinkään
ohjelmointiryhmään,* sillä HTML ei ole ohjelmointikieli. Esitä ne
mielummin WWW-kysymyksille varatussa ryhmässä `sfnet.viestinta.www`, kun
olet ensin tarkistanut, ettei kysymykseesi ole vastattu [ryhmän
VUKK:ssa](http://www.heikniemi.net/svwww-vukk/) tai englanninkielisessä
[FAQ:ssa](http://www.stack.nl/htmlhelp/faq/wdgfaq.htm).

Esittäessäsi kysymyksen muista kertoa kaikki olennainen! Älä jätä
mainitsematta käyttöjärjestelmää, ohjelmointikieltä äläkä kielen tulkkia
tai kääntäjää, paitsi jos olet varma, etteivät ne ole olennaisia. Kerro
myös omat ajatuksesi; mainitse jotain siitä, mitä olet (tuloksettomasti)
jo kokeillut; kerro myös, miksi esität kysymyksesi. Näin varmistat sen,
että ryhmän muut lukijat pääsevät ongelmaasi nopeasti kiinni, ja saat
heti alusta alkaen hyödyllisiä vastauksia.

Numerosarjoja ja niiden tarkistemerkkejä
========================================

Numerosarjojen tarkisteista on olemassa tätä FAQia kattavampi esitys
[Tarkistusmerkkien
laskentamekanismeja](http://www.mbnet.fi/%7Ethales/tarkmerk.htm). Sen on
kirjoittanut Teppo Vuori. Pankkeihin liittyviä tunnusnumeroita koskevat
vastaukset perustuvat [Suomen
pankkiyhdistyksen](http://www.pankkiyhdistys.fi/) julkaisuun
Tilisiirto-opas 1.12.1998 [(saatavana verkosta
PDF-muodossa)](http://www.pankkiyhdistys.fi/sisalto/upload/pdf/tsopas.pdf).

Miten pankkiviitenumero muodostetaan?
=====================================

Pankkiviitenumero korkeintaan 20 merkkiä pitkä numerosarja. Sen tulisi
kuitenkin olla mahdollisimman lyhyt, jotta näppäilyvirheet vähenisivät.
Mielellään kuitenkin vähintään 4 merkkiä. Laskuttaja voi valita
viitenumeron vapaasti viimeistä numeroa lukuunottamatta. Viitenumero
suositellaan tulostettavaksi viiden numeron ryhmissä oikealta alkaen.
Alkunollia ei tulosteta.

Viitenumeron viimeinen numero on tarkiste. Se muodostetaan seuraavasti:
&

-   Tarkistettavan viitteen numerot tarkistetta lukuunottamatta
    kerrotaan oikealta vasemmalle painoarvoilla 7, 3, 1, 7, 3, 1, ...

-   Tulot lasketaan yhteen ja summa vähennetään seuraavasta täydestä
    kymmenestä.

-   Erotus on viitenumeron tarkiste.

Esimerkiksi `123 45672` on oikein muodostettu viitenumero.

Kimmo Surakka <kusti@cs.tut.fi> on kirjoittanut tästä aiheesta
[seittisivun](http://www.cs.tut.fi/~kusti/viite.html), josta löytyy mm.
C-kielinen esimerkkifunktio.

Miten rakentuu pankkitilinumero?
================================

Suomalaisten pankkien tilinumerot rakentuvat tällä hetkellä (tammikuu
1999) seuraavasti. Tilinumero on korkeintaan 14 merkkiä pitkä ja koostuu
pelkästään numeromerkeistä. Kun tilinumero on tarkoitettu ihmisten
luettavaksi, se kirjoitetaan kahdessa osassa, joiden välissä on
yhdysviiva. Ensimmäinen osa on aina kuusi merkkiä pitkä, ja toisen osan
pituus vaihtelee välillä kahdesta kahdeksaan merkkiä. Tilinumeron kaksi
ensimmäistä merkkiä ilmaisevat tiliä hallinnoivan pankin tai
pankkiryhmän. Tilinumeron viimeinen merkki on tarkiste.

Tilinumeron konekielinen muoto, eli se muoto, jota ihmisten ei ole
tarkoitus lukea, muodostetaan selväkielisestä muodosta seuraavasti.

-   Mikäli tilinumero alkaa `1`, `2`, `31`, `32`, `33`, `34`, `35`, `6`
    tai `8`, tilinumero täydennetään vasemmalta lukien kuuden numeron
    jälkeen siten, että 14 numeroa täyttyy.

-   Mikäli tilinumero alkaa `4` tai `5`, tilinumero täydennetään
    vasemmalta lukien seitsemännen numeron jälkeen siten, että 14
    numeroa täyttyy.

Esimerkiksi tilinumerot `123456-785` ja `12345600000785` merkitsevät
samaa tiliä, ja tilinumerot `432456-781` ja `43245670000081` merkitsevät
samaa tiliä.

Tilinumeron tarkiste lasketaan tilinumeron konekielisen muodon 13
ensimmäisestä merkistä vasemmalta lukien. Kukin numeromerkki kerrotaan
painoarvolla 2 tai 1 siten, että oikeanpuolimmaisin kerrotaan painolla 2
ja vierekkäiset merkit kerrotaan eri painolla. Näiden tulojen
numeromerkkien summa vähennetään pienimmästä kyseistä summaa
suuremmasta, kymmenellä jaollisesta luvusta. Tämä erotus on tilinumeron
tarkiste, joka merkitään tilinumeron viimeiseksi eli 14. merkiksi.

Miten henkilötunnus muodostetaan?
=================================

Suomalaisen henkilötunnuksen muoto on määrätty väestötietoasetuksen 2
pykälässä ([Finlex-säädöskokoelman](http://www.finlex.fi/) numero
886/1993 muutettu 84/1997).

Henkilötunnus (aiemmin sosiaaliturvatunnus) koostuu syntymäajasta,
vuosisatamerkistä, tunnusluvusta ja tarkistemerkistä. Niinpä se on
muotoa PPKKVVCNNNT. Kaikki nollat tulostetaan.

Vuosisatamerkki (C) on `-` 1900-luvulla ja `+` 1800-luvulla syntyneillä.
2000-luvulla (tarkkaan ottaen 1.1.2000 ja sen jälkeen) syntyneiden
henkilötunnuksissa käytetään isoa A-kirjainta. *Huomaa, että
henkilötunnuksessa ei ole automaattisesti viivaa välissä*; kaikki
ohjelmat, jotka olettavat henkilötunnuksen olevan muotoa `111111-1111`,
hajoavat 2000-luvulla.

Tunnusluku (NNN) on kolminumeroinen luku, joka on miehillä pariton ja
naisilla parillinen. Tunnusluku on harvoin kovin suuri.

Tarkistemerkki (T) lasketaan siten, että syntymäaika ja tunnusluku
yhdistetään yhdeksi 9-merkkiseksi luvuksi, joka on siis muotoa
PPKKVVNNN. Tämä luku jaetaan 31:llä. Jakojäännöksen perusteella valitaan
tarkistemerkiksi yksi merkeistä `0123456789ABCDEFHJKLMNPRSTUVWXY` siten,
että jaon mennessä tasan tarkistemerkki on 0, jakojäännöksen ollessa
yksi se on 1 jne. Jos siis jakojäännös on 30, on tarkistemerkkinä
kirjain Y.

Olen kirjoittanut [C-kielisen
ohjelman](https://jautero.github.io/sao-faq/hetu.c), joka tarkastaa
henkilötunnuksen oikeellisuuden.

[Lars Wirzenius](http://www.iki.fi/liw/) on kirjoittanut
[Python-skriptin](http://liw.iki.fi/liw/download/tee-hetu.py), joka
generoi henkilötunnuksia annetuista päivämääristä.

Miten LY-tunnus muodostetaan?
=============================

LY-tunnuksen muoto on määrätty asetuksessa liike- ja yhteisötunnuksesta
(598/1991). Asetuksen teksti on saatavissa myös verkosta
[Finlex-säädöskokoelman](http://www.finlex.fi/) kautta. Seuraava kappale
on melko suoraa lainausta asetustekstistä (4 §).

Liike- ja yhteisötunnuksen muodostavat järjestysnumero ja
tarkistusnumero mainitussa järjestyksessä. Järjestysnumero on enintään
seitsemännumeroinen. Tarkistusnumeron laskemiseksi kerrotaan oikealta
vasemmalle lukien järjestysnumeron

-   ensimmäinen numero luvulla 2,

-   toinen numero luvulla 4,

-   kolmas numero luvulla 8,

-   neljäs numero luvulla 5,

-   viides numero luvulla 10,

-   kuudes numero luvulla 9,

-   seitsemäs numero luvlla 7

lasketaan näin saadut tulot yhteen ja jaetaan summa luvulla 11.
Tarkistusnumero määräytyy jakolaskun jakojäännöksen perusteella
seuraavasti: jos jakojäännös on nolla, on tarkistusnumero nolla. Jos
jakojäännös on suurempi kuin yksi, on tarkistusnumero erotus, joka
saadaan vähentämällä jakojäännös luvusta 11. Jos jakojäännös on yksi,
jätetään tarkistusnumeroa vastaava järjestysnumero käyttämättä.

Selvennykseksi mainittakoon, että minkään oikeellisen ly-tunnuksen
jakojäännös ei voi olla yksi.

Euroopan yhteisvaluutta euro
============================

Miten muutan markat (tai kruunut tai ...) euroiksi ja takaisin?
===============================================================

Euron ja siihen sidottujen kansallisten valuuttojen välillä tai näiden
kansallisten valuuttojen kesken saa tehdä muutoksia vain tiettyjen
sääntöjen mukaisesti. Nämä säännöt on asetettu [Neuvoston asetuksessa
(EY) numero
1103/97](http://europa.eu.int/eur-lex/fi/lif/dat/1997/fi_397R1103.html).
Säännöt ovat seuraavat:

Euron ja kansallisten eurovaluuttojen välisissä muuntokursseissa (jotka
on esitetty myöhemmin tässä kirjoitelmassa) on kuusi merkitsevää
numeroa, ja ne ilmaisevat yhden euron arvon kunkin kansallisen valuutan
mukaan. Muuntokursseja ei saa pyöristää, eikä niitä saa lyhentää. Ei ole
myöskään sallittua käyttää kurssin pyöristettyä käänteislukua, tai
muuntokursseista johdettuja kahden kansallisen valuutan välisiä
kursseja. Muunnoksen välituloksena käytettävä euromääräinen rahasumma
saadaan pyöristää vähintään kolmen desimaalin tarkkudelle.

Muunnokset on siis tehtävä seuraavasti:

-   Euro muutetaan kansalliseksi valuutaksi kertomalla euromääräinen
    rahasumma muuntokurssilla. Tulos pyöristetään kansallisen valuutan
    tavan mukaisesti lähimpään yksikköön, alayksikköön tai jomman kumman
    kerrannaiseen tai murto-osaan. Esimerkiksi markkamääräinen tulos
    voidaan tilanteesta riippuen pyöristää joko penneiksi tai kymmeniksi
    penneiksi. Näin esimerkiksi 5 euroa on 5 \* 5,94573 Suomen markkaa
    eli asianmukaisesti pyöristettynä 29 markkaa ja 70 penniä.

-   Kansallinen valuutta muutetaan euroiksi jakamalla rahasumma
    muuntokurssilla. **Ei ole luvallista kertoa muuntokurssin
    käänteisluvulla**, mikäli pyöristysvirheet ovat mahdollisia. Saatu
    rahasumma pyöristetään ylös- tai alaspäin lähimpään senttiin.
    Esimerkiksi 20 Suomen markkaa on 20 / 5,94573 euroa eli
    asianmukaisesti pyöristettynä kolme euroa ja 36 senttiä.

-   Kansallinen euroalueen valuutta muunnetaan toiseksi kansalliseksi
    euroalueen valuutaksi käymällä euron kautta. Euromääräinen välitulos
    saadaan pyöristää vähintään kolmen desimaalin tarkkuudelle.
    Esimerkiksi 100 Suomen markkaa on 100 / 5,94573 = 16,819 euroa ja
    siis 16,819 \* 1,95583 Saksan markkaa eli asianmukaisesti
    pyöristettynä 32,90 Saksan markkaa.

Muita menetelmiä saadaan käyttää vain, jos ne antavat täsmälleen saman
tuloksen kuin tässä mainitut.

Kansallisten eurovaluuttojen ja euron väliset muuntokertoimet
=============================================================

Seuraavia muuntokertoimia tulee käyttää muunnettaessa kansalliset
eurovaluutat euroiksi ja päinvastoin:

-   1 EUR = 40.3399 BEF

-   1 EUR = 1.95583 DEM

-   1 EUR = 166.386 ESP

-   1 EUR = 6.55957 FRF

-   1 EUR = .787564 IEP

-   1 EUR = 1936.27 ITL

-   1 EUR = 40.3399 LUF

-   1 EUR = 2.20371 NLG

-   1 EUR = 13.7603 ATS

-   1 EUR = 200.482 PTE

-   1 EUR = 5.94573 FIM

Lähde: Euroopan unionin sivu "Euro Conversion Rates"
[(txt)](http://europe.eu.int/eurobirth/rates.txt) ja
[(html)](http://europe.eu.int/eurobirth/rates.html).

Muuntokertoimet eivät riitä oikean muutoksen tekemiseksi. Tarkat ohjeet
on mainittu edellä.

Päiväykseen liittyviä algoritmeja
=================================

Yleistä ja pari kalenterikirjastoa
==================================

Vaikka monet päiväykseen liittyistä algoritmeista ovatkin
kansainvälisiä, käsittelen osaa niistä tässä. Koska Suomi ja Yhdysvallat
laskevat kalenterinsa hieman eri tavoin, emme voi odottaa, että
pääasiassa yhdysvaltalaiset faqinkokoajat osaisivat vastata suomalaisten
kannalta oikein.

Itse asiassa huomasin etsiessäni tähän dokumenttiin vastauksia, että
osaa päiväysalgoritmeista ei ole oikeastaan ollenkaan käsitelty
kansainvälisissä FAQ:eissa. Niissäkin, joissa näitä harvoin käsiteltyjä
kysymyksiä on käsitelty, on kokoaja sanonut, että hänellä ei ole
hajuakaan, onko hänen antamansa vastaus oikea.

Riku Meskanen <mesrik@cc.jyu.fi> on kirjoittanut C-kielisen
kalenterikirjaston. Kirjasto on GNU General Public Licensen alainen ja
on saatavissa [FTP:llä](ftp://ftp.jyu.fi/private/mesrik/) sekä `tar.gz`-
että `zip`-tiedostona.

Steffen Beyer <sb@sdm.de> on kirjoittanut Perl-modulin `Date::DateCalc`,
joka sisältää yksinkertaisia päiväykseen liittyviä rutiineja. Minulla ei
ole kokemuksia sen toimivuudesta. Modulin voi hakea CPAN-mirroreista
esimerkiksi hakemistosta `modules/by-module/Date`.

Miten määritän annetun päivän viikkonumeron?
============================================

Tähän kysymykseen annetaan huomattavasti enemmän vääriä kuin oikeita
vastauksia. Seuraava on yritetty varmistaa oikeaksi, mutta takuita en
anna.

Toisin kuin esimerkiksi Yhdysvallat, Suomi numeroi viikkonsa
kansainvälisen ISO 8601 -standardin mukaisesti. Lisää yleistä tietoa
tästä standardista saa Jukka Korpelan kirjoittamasta jutusta [ISO 8601,
the date and time representation
standard](http://www.malibutelecom.com/yucca/iso8601.html). Standardi
otettiin käyttöön Suomessa vuonna 1973. Sen mukaan:

-   viikon ensimmäinen päivä on maanantai; ja

-   vuoden ensimmäinen viikko (viikko 1) on se viikko, johon kuuluu
    vuoden ensimmäinen torstai.

Tästä seuraa muutama viikkonumeron laskemista vaikeuttava asia. Kaksi
tärkeintä lienevät se, että tammikuun 1. päivä ei välttämättä kuulu
vuoden ensimmäiseen viikkoon, ja se, että vuodessa on vuodesta riippuen
joko 52 tai 53 viikkoa.

[Calendar FAQ:in](http://www.tondering.dk/claus/calendar.html) (osa 3,
kysymys 5.6) mukaan 53 viikkoa on kaikissa vuosissa, jotka alkavat
torstaina, sekä lisäksi karkausvuosissa, jotka alkavat keskiviikkona.
Muissa on 52 viikkoa.

Niinpä kohtuullisen yksinkertainen algoritmi on seuraavanlainen
(mukailtu edellämainitussa Riku Meskasen <mesrik@cc.jyu.fi>
kalenterikirjastossa olevan toteutuksen pohjalta):

1.  Laske, montako päivää on kulunut vuoden alusta (jos annettu päivä on
    tammikuun ensimmäinen, vastaus on 0). Lisää tähän 0, jos tammikuun
    1. on maanantai, 1, jos tammikuun ensimmäinen on tiistai jne. Jaa
    vastaus seitsemällä ja ota osamäärästä huomioon vain kokonaiset;
    tämä on ensimmäinen arvaus viikkonumerkoksi.

2.  Jos vuosi on alkanut maanantaina, tiistaina, keskiviikkona tai
    torstaina, lisää arvaukseen yksi.

3.  Jos tulos on välillä 1-52, se kelpaa viikkonumeroksi mutta jos tulos
    on nolla, niin:

    -   Jos edellinen vuosi on alkanut torstaina, tai se on ollut
        karkausvuosi ja alkanut keskiviikkona, viikkonumero on
        todellisuudessa 53.

    -   Muussa tapauksessa todellinen viikkonumero on 52.

    jos tulos on 53, niin päätellään edellisen kohdan mukaisesti, onko
    vuodessa oikeasti 53 viikkoa:

    -   Jos kuluva vuosi on alkanut torstaina, tai se on ollut
        karkausvuosi ja alkanut keskiviikkona, viikkonumero on
        todellisuudessa 53.

    -   Muussa tapauksessa kyseessä on seuraavan vuoden 1. viikko ja
        viikkonumero on 1.

Seuraavassa C-ohjelmanpätkässä oleva weekno()-funktio laskee annetulle
päivälle (d = päivä 1 - 31, m = kuukausi 1 .. 12 ja y = vuosi)
viikkonumeron. Se on Tapani Tarvaisen <tapani@iki.fi> käsialaa.

    int julian(int d, int m, int y)
    {
      int n1, n2;
      n1 = 12*y+m-3;
      n2 = n1/12;
      return (734*n1+15)/24-2*n2+n2/4-n2/100+n2/400+d+1721119;
    }

    int weekno(int d, int m, int y)
    {
      int n1, n2, w;
      n1 = julian(d, m, y);
      n2 = 7*(n1/7)+10;
      y = y+1;
      while ((w = (n2-julian(1,1,y))/7) <= 0) {
        y = y-1;
      }
      return w;
    }

Monet ohjelmointivälineet ja käyttöjärjestelmät tarjoavat välineitä
viikkonumeron laskemiseen. Ohjelmoijan on oltava kuitenkin tarkkana
siitä, että hän käyttää työkaluja, jotka laskevat oikean maan
viikkonumeroita - oikein. `:-)`

Muuta luettavaa
===============

Tämän artikkelin sisälmys on tarkoituksella rajattu ahtaasti, sillä
maailmalla on runsaasti hyvää (ja toki myös asiantuntematonta)
materiaalia, joka vastaa useimpiin kysymyksiin. Tässä annetaan vihjeitä
hyviksi aloituspaikoiksi. Lisää, itse asiassa aivan liikaa vastauksia
ohjemoinnista usein esitettyihin kysymyksiin on
[FAQ-arkistossa](http://www.faqs.org/faqs/). Katsele erityisesti
`comp`-hierarkian FAQeja.

Kirjallisuutta
==============

Vesa Lappalainen on koonnut
[seittisivulleen](http://www.mit.jyu.fi/vesal/kurssit/kirjallisuutta.html)
arvioita ohjelmointiin yleensä ja erityisesti graafisiin
käyttöliittymiin, olio-ohjelmointiin, C++-kieleen ja Delphiin
liittyvistä kirjoista. Tuolla sivulla on myös linkkejä Lappalaisen
kirja-arvosteluihin.

Ohjelmointikielet
=================

Tärkein verkosta saatavissaa oleva C-ohjelmointikieleen liittyvä
kirjoitus on [C-FAQ](http://www.eskimo.com/~scs/C-faq/top.html). Jukka
Korpela on myös koonnut [Tietoa C-ohjelmointikielestä (ja C++:sta)
Internetissä](http://www.malibutelecom.com/yucca/Cinfo.html).

Bjarne Stroustrupin kehittämään C++-kieleen liittyvää materiaalia löytyy
kasapäin keksijän itsensä kokoaman
[seittisivun](http://www.research.att.com/~bs/C++.html) kautta.
Erityisesti mainittakoon [C++-FAQ
Lite](http://www.parashift.com/c++-faq-lite/) sekä [SGI:n Standard
Template Library Programmer's Guide](http://www.sgi.com/tech/stl/).

Java-kielestä on olemassa [FAQ-lista](http://www.afu.com/intro.html).
Muutakin Java-materiaalia on [seitissä](http://www.afu.com/).

Pascal-kielen Borland-murteisiin (poislukien Delphi) liittyviä tekstejä
löytyy [mini-FAQ:n](http://www.faqs.org/faqs/pascal/borland-minifaq/)
kauttta.

Perl-materiaalia on [The Perl Instituten
seittisivulla](http://www.perl.org). Lisäksi on saatavilla
[Perl-FAQ](http://www.faqs.org/faqs/perl-faq/part0/). Jukka Korpela on
tehnyt itse materiaalia ja kerännyt linkkejä Perl-kielestä sekä
[suomeksi](http://www.malibutelecom.com/yucca/perl/linkit.html) että
[englanniksi](http://www.malibutelecom.com/yucca/perl/).

Python-kielen [seittisivusto](http://www.python.org/) on olemassa. Jukka
Korpela on koonnut [Perustietoa Python-ohjelmointikielestä
suomeksi](http://www.malibutelecom.com/yucca/python/).

[Visual Basic FAQ](http://www.thebestweb.com/vbfaqs/) on.

Lisp-kielestäkin on
[FAQ-lista](http://www.cs.cmu.edu/Groups/AI/html/faqs/lang/lisp/top.html)
sekä [käyttäjäyhdistys](http://www.lisp.org/) (The Association of Lisp
Users), ja Schemellä on [Suomessa
fanisivusto](http://www.niksula.cs.hut.fi/~candolin/scheme/), jossa on
erinomainen linkkilista.

Haskell-kielellä on [seittisivusto](http://www.haskell.org/).

Jukka Korpela on koonnut [Tietoa Fortran-ohjelmointikielestä
Internetissä](http://www.malibutelecom.com/yucca/Fortran.html).

Käyttöjärjestelmät
==================

Microsoftin käyttöjärjestelmistä tietoa löytyy kasapäin ympäri verkkoa.
Parhaan tuloksen saa etsimällä kysymykseensä vastausta
suosikkihakurobotillaan ja lisäksi [Googlen
keskusteluarkistoista](http://groups.google.com/). MS-DOS-ohjelmoinnin
kysymyksiin vastaillaan
[FAQ-listassa](http://www.faqs.org/faqs/msdos-programmer-faq/part1/preamble.html).
Windows-ohjelmointiin sopiva lähtöpaikka lienee [Microsoftin oma
ohjelmointiportaali](http://msdn.microsoft.com).

Macintosh-ohjelmoinnista on
[FAQ-lista](http://www.faqs.org/faqs/macintosh/programming-faq/).

Unix-ohjelmoinnistakin on
[FAQ-lista](http://www.erlenstar.demon.co.uk/unix/faq_toc.html)

Standardit ja muut normit
=========================

Standardeista, normeista ja "teollisuusstandardeista" yleisesti kertoo
Jukka Korpelan kirjoitus [Standardi, mikä se
on?](http://www.malibutelecom.com/yucca/stand.html).

Suomen aakkostamista käsittelee SFS-standardi 4600. Asiasta on
luettavissa [lehdistötiedote](http://www.sfs.fi/standard/20000619.html).
Jukka Korpela on kirjoittanut seittisivun [aakkostuksesta
Suomessa](http://www.cs.tut.fi/~jkorpela/abc.html).

Euroopan standardointijärjestö [CEN](http://www.cenorm.be/default.htm)
on julkaissut eräitä epävirallisiksi mutta merkittäviksi normeiksi
luonnehdittavissa olevia sopimuksia, ns. [CWA:ita (CEN Workshop
Agreement)](http://www.cenorm.be/isss/CWAs/cwalist.htm). Niissä mm.
käsitellään sitä, miten erilaiset kieli- ja kulttuuririippuvuudet tulisi
ottaa huomioon tietokoneohjelmien suunnittelussa sekä mikä on
yleiseurooppalaisiin yhteyksiin sopiva käytäntö päiväysten, rahamäärien
yms. esittämiseen eli ns. pan-European locale.

Kommentteja halutaan
====================

Tätä kirjoitelmaa ylläpitää Juha Autero. <jautero@iki.fi>. Korjauksia,
lisäyksiä ja muuta sellaista otetaan vastaan.

FAQ:n ylläpitäjä tarvitsee avustajia! Jos olet kiinnostunut, ota
yhteyttä ylläpitäjään <jautero@iki.fi>.

Kiitokset
=========

Seuraavat ihmiset ovat auttaneet minua tämän kirjoitelman kokoamisessa
palautteellaan, kokemuksellaan, tiedoillaan ja ehdotuksillaan. Suuri
kiitos heille kaikille.

-   Juha Antila

-   Jaakko Haakana

-   Martti Halminen

-   Jonne Itkonen

-   Jukka Korpela

-   Jouko Koski

-   Jarno Käyhkö

-   Jani Lahti

-   Jukka Lahtinen

-   Tero Lahtinen

-   Sami J. Laine

-   Vesa Lappalainen

-   Jari Lehtonen

-   Ville Lehtonen

-   Veli-Pekka Lehtosaari

-   Tor Lillqvist

-   Teemu Luojola

-   Riku Meskanen

-   Jori Mäntysalo

-   Markku Nevalainen

-   Kimmo Pyykkö

-   Juha-Heikki Ruismäki

-   Rauli Ruohonen

-   Kimmo Surakka

-   Tapani Tarvainen

-   Mikko Vierula

-   Teppo Vuori

-   Lars Wirzenius

-   Miika Åsten
