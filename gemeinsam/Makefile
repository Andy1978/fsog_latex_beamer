.PHONY:clean
.PHONY:realclean

%.pdf: %.tex
	latexmk -pdf $^

clean:
	latexmk -c
	rm -f *.vrb *.snm *.nav

realclean: clean
	rm -f *.pdf
