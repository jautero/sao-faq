
faqs = sao-faq saoa-faq

genfiles =  $(faqs:=.txt) $(faqs:=.tov) $(faqs:=-html)

all : $(genfiles) changelog.html

%.txt: %.sgml
	debiandoc2text -l fi_FI $<

%.tov: %.sgml
	debiandoc2textov -l fi_FI $<

%-html : %.sgml
	debiandoc2html -l fi_FI $<
	touch $@

changelog.html : $(faqs:=.sgml)
	cvs2html -O $@

clean :
	rm -rf $(genfiles) $(faqs:=.html)

realclean : clean
	rm *~
