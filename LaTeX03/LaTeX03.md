---
layout: "layout"
title:  "LaTeX Tugas Akhir"
permalink: /LaTeX03/
---

* [Downloard TARBALL](../tarballs/LaTeX03.tar.bz2)
* [PDF](skripsi.pdf)

<br>
### [Makefile](Makefile)

```
{% raw %}
# (c) 2016-2021 Rahmat M. Samik-Ibrahim
# REV03 Fri 23 Jul 2021 14:20:34 WIB
# START Tue Jul 12 15:02:37 WIB 2016

all:	skripsi.pdf LaTeX03.md

skripsi.pdf:	skripsi.tex
	pdflatex skripsi
	pdflatex skripsi
	bibtex   skripsi
	pdflatex skripsi
	pdflatex skripsi

LaTeX03.md: LaTeX03.pmd
	python ../assets/scripts/includeScript.py < LaTeX03.pmd > LaTeX03.md

clean:
	rm -f *.aux *.log *.idx *.toc *.bbl *.blg
	rm -f *.lof *.lol *.lot *.out

cleanpdf:	clean
	rm -f *.pdf

{% endraw %}
```

