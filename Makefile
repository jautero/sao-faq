
faqs = sao-faq saoa-faq

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

.PHONY: all
