
CC = gcc -Wall -ansi -pedantic

faqs = sao-faq saoa-faq

#pubdir = ~/public_html/faq
pubdir=jautero@kosh.hut.fi:public_html/faq
ftpdir=jautero@kosh.hut.fi:public_html/faq
SCP = rsync -e ssh
TAR = tar
tarball = faq.tar.gz

sources = srand-virhe.c hetu.c

genfiles = $(faqs:=.txt) $(faqs:=.tov) $(faqs:=-html) \
	   changelog.html ChangeLog srand-virhe-esim srand-virhe

all : $(genfiles)

html : $(faqs:=-html) 

%-esim : %
	export LANG=C ; echo "% Generoitu `date`" > $@
	export LANG=C ; echo "% koneella `uname -a`" >> $@
	PATH=$$PATH:. $< >> $@

%.txt: %.sgml
	debiandoc2text -l fi_FI $<

%.tov: %.sgml
	debiandoc2textov -l fi_FI $<

%-html : %.sgml
	debiandoc2html -l fi_FI $<
	touch $@

changelog.html : $(faqs:=.sgml) Makefile
	cvs2html -O $@

ChangeLog : $(faqs:=.sgml) Makefile names
	cvs2cl -U names

clean :
	rm -rf $(genfiles) $(faqs:=.html)

realclean : clean
	rm *~

publish : all sources
	set -e ; files="" ; for p in sgml txt tov ; \
	   do \
	     files="$$files sao-faq.$$p" ; \
	     files="$$files saoa-faq.$$p" ; \
	   done ; \
	  files="$$files ChangeLog changelog.html sao-faq.html saoa-faq.html" ; \
	  files="$$files srand-virhe-esim" ; \
	  $(SCP) -r $$files $(pubdir)

tarball : all
	set -e ; files="" ; for p in sgml txt tov ; \
	   do \
	     files="$$files sao-faq.$$p" ; \
	     files="$$files saoa-faq.$$p" ; \
	   done ; \
	  files="$$files ChangeLog changelog.html sao-faq.html saoa-faq.html" ; \
	  files="$$files srand-virhe-esim" ; \
	  $(TAR) cvzf $(tarball) $$files

sources : all
	$(SCP) $(sources) $(ftpdir)

.PHONY: all html
