
faqs = sao-faq saoa-faq

all : $(faqs:=.txt) $(faqs:=.tov)

%.txt: %.sgml
	debiandoc2text -l fi_FI $<

%.tov: %.sgml
	debiandoc2textov -l fi_FI $<

