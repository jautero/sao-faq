
faqs = sao-faq saoa-faq

#pubdir = antkaij@itu.st.jyu.fi:www/faq
pubdir = ~/public_html/faq
SCP = scp

genfiles = $(faqs:=.txt) $(faqs:=.tov) $(faqs:=-html) \
	   changelog.html ChangeLog

all : $(genfiles)

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

publish : all
	set -e ; files="" ; for p in sgml txt tov ; \
	   do \
	     files="$$files sao-faq.$$p" ; \
	     files="$$files saoa-faq.$$p" ; \
	   done ; \
	files="$$files ChangeLog changelog.html sao-faq.html saoa-faq.html"
	$(SCP) -r $$files $(pubdir)

.PHONY: all
