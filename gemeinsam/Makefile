.PHONY:clean
.PHONY:realclean

%.pdf: %.tex ../gemeinsam/common_settings.tex
	latexmk -pdf $<

clean:
	latexmk -c
	rm -f *.vrb *.snm *.nav *.aux *.log *.fdb_latexmk

realclean: clean
	rm -f *.pdf
