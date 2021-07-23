# REV002 Fri 23 Jul 2021 13:59:08 WIB
# STARTX Tue Sep 13 09:30:20 WIB 2016
# Adapted from Tobias Oetiker
###########################################################################

SHELL = /bin/bash
# Define some variables
# MAKEINDEX=makeindex
BRP00=src/os00-BRP.tex src/os00-TIPS.tex
BRP=${BRP00}
CHK00=src/os00-check.tex
CHK=${CHK00}
INCFILES=Makefile src/osII-jadwal.tex src/beamer.tex src/osHH.tex
PDFLATEX=pdflatex
PDFFILES= \
	os00.pdf \
	check00.pdf \


# The default targets
all: $(PDFFILES) LaTeX02.md

# 12 ######################################################################
os00.pdf: src/os00.tex ${INCFILES} ${BRP} ${CHK00}
	-mkdir pdfbuild
	(TEXINPUTS=.:`pwd`/src:${TEXINPUTS:-:} && \
	 export TEXINPUTS && \
         cd pdfbuild && \
	 $(PDFLATEX) os00 && \
	 $(PDFLATEX) os00 && \
	 $(PDFLATEX) os00 && \
	 mv os00.pdf .. )
	 rm pdfbuild/*

# 12 ######################################################################
check00.pdf: src/check00.tex ${CHK00} ${INCFILES}
	-mkdir pdfbuild
	(TEXINPUTS=.:`pwd`/src:${TEXINPUTS:-:} && \
	 export TEXINPUTS && \
         cd pdfbuild && \
	 $(PDFLATEX) check00 && \
	 $(PDFLATEX) check00 && \
	 $(PDFLATEX) check00 && \
	 mv check00.pdf .. )
	 rm pdfbuild/*


LaTeX02.md: LaTeX02.pmd
	python ../assets/scripts/includeScript.py < LaTeX02.pmd > LaTeX02.md

# ## ######################################################################
cleanpdf: clean
	rm -f $(PDFFILES)

clean:
	rm -rf pdfbuild
	rm -f src/*.tex.bak

xfer:
	chmod 644 *.pdf  src/*
	cp os??.pdf ~/tmp/
	cp check??.pdf ~/tmp/

