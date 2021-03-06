all: dsalg.dvi

again:
	latex dsalg

LANG=cpp

clean:
	rm *.tex dsalg.dvi

dsalg.dvi: dsalg.tex intro.tex arrays-pointers.tex asymptotic-analysis.tex abstraction.tex recursion.tex queues-stacks.tex
	latex dsalg

pdf: dsalg.dvi
	dvipdf dsalg.dvi

%.tex : %.tx
	./scripts/compile $< $(LANG)