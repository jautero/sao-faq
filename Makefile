
faqs = sao-faq saoa-faq

genfiles =  $(faqs:=.txt) $(faqs:=.tov) $(faqs:=-html)

all : $(genfiles)

%.txt: %.sgml
	debiandoc2text -l fi_FI $<

%.tov: %.sgml
	debiandoc2textov -l fi_FI $<

%-html : %.sgml
	debiandoc2html -l fi_FI $<
	touch $@

clean :
	rm -rf $(genfiles) $(faqs:=.html)

realclean : clean
	rm *~
