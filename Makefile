
targets = stanli.pdf example.pdf

default: $(targets)

%.pdf: %.tex stanli.sty
	pdflatex  $<
	pdflatex  $<
	[ ! -e $(basename $<).ind ] || makeindex $(basename $<)
	pdflatex  $<

clean:
	rm -f *.aux *.idx *.ilg *.ind *.log *.toc *.out
	rm -f *~
	rm -f \#*

clean+reset: clean git-reset-pdfs

git-reset-pdfs: $(targets)
	git checkout-index -f $^

ifdef FORCE
.PHONY: stanli.tex example.tex
endif
