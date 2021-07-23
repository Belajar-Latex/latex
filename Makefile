# Thu 08 Jul 2021 10:19:33 WIB

all: tarballs/LaTeX01.tar.bz2 Makefile
	cd LaTeX01/; make; make clean;

tarballs: Makefile
	tar cfj tarballs/LaTeX01.tar.bz2 LaTeX01/

clean:
	cd LaTeX01/; make cleanpdf;
	
.phony: clean tarballs

