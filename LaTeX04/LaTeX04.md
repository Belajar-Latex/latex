---
layout: "layout"
title:  "LaTeX Tugas Akhir"
permalink: /LaTeX04/
---

* [Downloard TARBALL](../tarballs/LaTeX04.tar.bz2)
* [PDF](JennyWren.pdf)

<br>
### [Makefile](Makefile)

```
{% raw %}
# (c) 2021-2021 Rahmat M. Samik-Ibrahim
# REV01 Fri 23 Jul 2021 16:50:18 WIB
# START Fri 26 Mar 2021 12:07:29 WIB

FILE1=JennyWren

DEPFILES= \
    $(FILE1).tex         \
    01-01.tex            \
    02-01.tex            \
    03-01.tex            \
    04-01.tex            \
    Full-License.tex     \
    mcdumbdumb.jpg       \
    Makefile             \


$(FILE1).pdf: $(DEPFILES)
	pdflatex $(FILE1)
	pdflatex $(FILE1)
	pdflatex $(FILE1)
	pdflatex $(FILE1)
	python ../assets/scripts/includeScript.py < LaTeX04.pmd > LaTeX04.md
	cp $(FILE1).pdf /tmp/231.pdf

cleanpdf: clean
	rm -f *.pdf

clean:
	rm -f *.aux *.bbl *.blg *.idx *.log *.out *.toc

xfer:
	chmod 644 $(FILE1).pdf
	cp $(FILE1).pdf ~/tmp/

{% endraw %}
```

