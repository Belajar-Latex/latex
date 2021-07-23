# (c) 2021-2021 Rahmat M. Samik-Ibrahim
# REV03 Fri 23 Jul 2021 22:00:00 WIB
# START Thu 25 Feb 2021 19:47:10 WIB

FILE1=example01

DEPFILES=                \
    $(FILE1).tex         \
    ucls-coat-grey.png   \
    Makefile             \


ALL: $(FILE1).pdf

$(FILE1).pdf: $(DEPFILES)
	pdflatex $(FILE1)
	pdflatex $(FILE1)
        # # This is GitHub Page related. You might delete it ###############
	python ../assets/scripts/includeScript.py < LaTeX01.pmd > LaTeX01.md

cleanpdf: clean
	rm -f *.pdf

clean:
	rm -f *.aux *.bbl *.blg *.idx *.log *.out *.toc

xfer:
	chmod 644 $(FILE1).pdf
	cp $(FILE1).pdf ~/tmp/

