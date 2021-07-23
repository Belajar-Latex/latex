# Thu 08 Jul 2021 10:19:33 WIB

all:
	cd LaTeX01/; make; make clean;
	tar cfj tarballs/LaTeX01.tar.bz2 LaTeX01/

clean:
	cd LaTeX01/; make cleanpdf;
	
.phony: clean tarballs

