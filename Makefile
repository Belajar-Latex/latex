# (c) 2021-2022 Rahmat M. Samik-Ibrahim
# REV03: Sun 24 Jul 2022 23:00
# REV02: Thu 08 Jul 2021 17:02
# REV01: Sun 24 Jul 2022 23:00
# START: Thu 08 Jul 2021 10:00

SITEURL="latex.vlsm.org"

ALL: latex .siteHack
	@echo "xyzzy... plugh"

latex:
	cd LaTeX01/; make; make clean;
	cd LaTeX02/; make; make clean;
	cd LaTeX03/; make; make clean;
	cd LaTeX04/; make; make clean;
	cd LaTeX05/; make; make clean;
	tar cfj tarballs/LaTeX01.tar.bz2 LaTeX01/ assets/scripts/
	tar cfj tarballs/LaTeX02.tar.bz2 LaTeX02/ assets/scripts/
	tar cfj tarballs/LaTeX03.tar.bz2 LaTeX03/ assets/scripts/
	tar cfj tarballs/LaTeX04.tar.bz2 LaTeX04/ assets/scripts/
	tar cfj tarballs/LaTeX05.tar.bz2 LaTeX05/ assets/scripts/


.siteHack: _site/sitemap.xml
	@bash  .siteHack $(SITEURL)
	@touch .siteHack
	
clean:
	rm -f tarballs/*.tar.bz2;
	cd LaTeX01/; make cleanpdf;
	cd LaTeX02/; make cleanpdf;
	cd LaTeX03/; make cleanpdf;
	cd LaTeX04/; make cleanpdf;
	cd LaTeX05/; make cleanpdf;

.phony: clean .siteHack
