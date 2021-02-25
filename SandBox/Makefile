# (c) 2021-2021 Rahmat M. Samik-Ibrahim
# START Thu 25 Feb 2021 19:47:10 WIB

FILE1=tabular

DEPFILES=                \
    $(FILE1).tex         \
    ucls-coat-grey.png   \
    Makefile             \


$(FILE1).pdf: $(DEPFILES)
	pdflatex $(FILE1)
	pdflatex $(FILE1)


cleanpdf: clean
	rm -f *.pdf

clean:
	rm -f *.aux *.bbl *.blg *.idx *.log *.out *.toc

xfer:
	chmod 644 $(FILE1).pdf
	cp $(FILE1).pdf ~/tmp/

