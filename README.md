# sao-faq
sfnet.atk.ohjelmointi ja sfnet.atk.ohjelmointi.alkeet uutisryhmien usein kysyttyjä kysymyksiä

FAQt on alunperin kirjoitettu _DebianDoc_ _SGML_ -kuvauskielellä, joka on alunperin kehitetty
[Debian](https://www.debian.org/) -projektin [dokumentointia](https://www.debian.org/doc/ddp) varten.
Nykyään kyseinen projekti on siirtynyt käyttämään _Docbook_ _XML_:ää, joten katsoin tarpeelliseksi
siirtyä käyttämään jotain uudempaa ja standardimpaa kuvauskieltä. Lisäksi siirryttyäni käyttämään _Macia_ 
minulla ei enää ollut ympäristöä, joka pystyisi käsittelemään _DebianDoc_ _SGML_:ää.

Ilmeinen valinta on [_Markdown_](https://daringfireball.net/projects/markdown/), jota _GitHub_ tukee suoraan
ja joka on suunniteltu lukukelpoiseksi tekstitiedostoksi sellaisenaan. Tämä tekee paitsi tekstin päivittämisestä
helpompaa, myös varmistaa, että tiedosto on luettavissa, vaikka prosessointityökaluja ei olisi saatavilla.

Konvertoin _SGML_-dokumentit ensin _Docbookiksi_ `debiandoc2dbk` -ohjelmalla ja sen jälkeen käytin `pandoc` -komentoa
kääntämään ne _Markdowniksi_. Ironisesti tätä varten jouduin rakentamaan _DebianDoc_ _SGML_ -ympäristön, mikä tavalllaan
poisti alkuperäisen tarpeen kuvauskielen vaihtamiseksi. 

Toistaiseksi _Markdown_ tiedostoihin ei ole tehty muutoksia ja säilytän _SGML_-tiedostot ainakin kunnes olen päivittänyt
`Makefile`-tiedoston.
