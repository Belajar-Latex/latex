# (c) 2016-2021 Rahmat M. Samik-Ibrahim
# REV04 Fri 23 Jul 2021 22:00:00 WIB
# START Tue Jul 12 15:02:37 WIB 2016

all:	skripsi.pdf

skripsi.pdf:	skripsi.tex
	pdflatex skripsi
	pdflatex skripsi
	bibtex   skripsi
	pdflatex skripsi
	pdflatex skripsi
        # # This is GitHub Page related. You might delete it ###############
	python ../assets/scripts/includeScript.py < LaTeX03.pmd > LaTeX03.md

clean:
	rm -f *.aux *.log *.idx *.toc *.bbl *.blg
	rm -f *.lof *.lol *.lot *.out

cleanpdf:	clean
	rm -f *.pdf

