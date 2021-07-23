# (c) 2021-2021 Rahmat M. Samik-Ibrahim
# REV02 Thu 08 Jul 2021 17:02:48 WIB
# START Thu 08 Jul 2021 10:19:33 WIB

all:
	cd LaTeX01/; make; make clean;
	cd LaTeX02/; make; make clean;
	cd LaTeX03/; make; make clean;
	cd LaTeX04/; make; make clean;
	tar cfj tarballs/LaTeX01.tar.bz2 LaTeX01/ assets/scripts/
	tar cfj tarballs/LaTeX02.tar.bz2 LaTeX02/ assets/scripts/
	tar cfj tarballs/LaTeX03.tar.bz2 LaTeX03/ assets/scripts/
	tar cfj tarballs/LaTeX04.tar.bz2 LaTeX04/ assets/scripts/

clean:
	cd LaTeX01/; make cleanpdf;
	cd LaTeX02/; make cleanpdf;
	cd LaTeX03/; make cleanpdf;
	cd LaTeX04/; make cleanpdf;
	
.phony: clean tarballs


