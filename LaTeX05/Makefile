# (c) 2016-2021 Rahmat M. Samik-Ibrahim
# REV03 Fri 23 Jul 2021 14:20:34 WIB
# START Tue Jul 12 15:02:37 WIB 2016

ALL:	thesis.pdf

thesis.pdf:	thesis.tex
	pdflatex thesis
	pdflatex thesis
	bibtex   thesis
	pdflatex thesis
	pdflatex thesis
	python ../assets/scripts/includeScript.py < LaTeX05.pmd > LaTeX05.md

clean:
	rm -f *.aux *.log *.idx *.toc *.bbl *.blg
	rm -f *.lof *.lol *.lot *.out

cleanpdf:	clean
	rm -f *.pdf

