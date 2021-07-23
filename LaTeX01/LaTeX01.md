---
layout: "layout"
title:  "Listings"
permalink: /LaTeX01/
---

* [tabular.pdf](tabular.pdf)
* [tabular.tex](tabular.tex)
* [Makefile](Makefile)
* [ucls-coat-grey.png](ucls-coat-grey.png)
* [LaTeX01.pmd](LaTeX01.pmd)
* [Downloard TARBALL](../tarballs/LaTeX01.tar.bz2)

<br>
### [tabular.tex](tabular.tex)

```
{% raw %}
\newcommand{\rev}{01 - 25-Feb-2021}
% REV02 Fri 23 Jul 2021 11:19:21 WIB
% START Thu 25 Feb 2021 20:00:11 WIB

\documentclass[12pt]{article}
\usepackage[a4paper, margin=50pt]{geometry}
\usepackage[pdftex]{graphicx}
\usepackage[hidelinks]{hyperref}
\usepackage{cellspace}
\usepackage{colortbl}
\usepackage{footnote}
\usepackage{multirow}
\usepackage{xcolor}
\setlength\cellspacetoplimit{4pt}
\setlength\cellspacebottomlimit{4pt}
\newcommand\cincludegraphics[2][]{\raisebox{-0.88\height}{\includegraphics[#1]{#2}}}

% %%%%%
\makesavenoteenv{tabular}
\makesavenoteenv{table}

% %%%%%
\newcommand{\scalea}{0.99}
\newcommand{\tcola}{8pt}
\newcommand{\tcolb}{101pt}
\newcommand{\tcolc}{7pt}
\newcommand{\tcold}{351pt}

% %%%%%
\newcommand{\pengarangs}{%
    Abu Akbar Al-Kulunia \\
}
\newcommand{\judul}{%
TABULAR
}

\begin{document}

\begin{titlepage}
    \begin{center}    
        \begin{center}
            \includegraphics[width=50mm]{ucls-coat-grey}
        \end{center}

    \vspace*{15mm}
    \textbf{\Large \judul}

    \vspace*{30mm}       
    \textbf{by}

    \vspace*{15mm}    
    \textbf{\Large \pengarangs}

    \vspace*{4.0cm}
    \textbf{
       Universe Centra Le Sahara (UCLS) \\
       Jabal Acacus Campus, Ghat        \\
       \url{https://ucls.vlsm.org/}     \\
       Rev. \rev%
    }

    \vspace*{5mm}    
    \textbf{\LARGE \textcolor{red}{***** DRAFT *****}}

    \end{center}

\end{titlepage}

\pagenumbering{roman}

\section*{Preface}
I pledge allegiance to the Operating Systems of the GNU/Linux,
and to the kernel for which it stands, one Bourne Again Shell under systemd,
indivisible, with GNU Library and Justice For All!

\vspace*{5mm}

\null\hfill Qapla, Jolan Tru!

\mbox{}\hfill Ghat, rev. \rev

\vspace*{10mm}

\hspace*{0pt}\hfill \pengarangs

\newpage

\pagenumbering{arabic}

\section{General Information}

\begin{tabular}{|>{\columncolor[gray]{0.79}}c|c|c|c|c|}
\hline
\cincludegraphics[height=23mm]{ucls-coat-grey} & \multicolumn{4}{|>{\columncolor[gray]{0.79}}c|}{
\begin{minipage}[t]{135mm}\center{\vspace{1pt}%
\Large{UCLS} \\
\large{Universe Centra Le Sahara} \\
\vspace{10pt}}%
\end{minipage}%
} \\
\hline
\multicolumn{5}{|c|}{
\begin{minipage}[t]{160mm}\center{\vspace{1pt}%
Revisi \rev
\vspace{10pt}}%
\end{minipage}%
} \\
% 23 %%%%
\hline
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize \textbf{Course Name (CN)}}%
\vspace{10pt}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize Tabular}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize \textbf{Prerequisite For}}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize \textbf{Follow Up}}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize \textbf{Integration}}%
\end{minipage}%
\\
% 23 %%%%
\hline
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize \textbf{Course Number}}%
\vspace{10pt}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize \LaTeX 101}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize TBA}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize TBA}%
\end{minipage}%
&
\begin{minipage}[t]{32mm}\vspace{1pt}%
{\scriptsize TBA}%
\end{minipage}%
\\

\hline
\end{tabular}

\section{Tabular}

\begin{tabular}{|c|c|c|c|c|c|c|c|}\cline{3-8}
\multicolumn{2}{c|}{\multirow{2}{*}{}}&\multicolumn{3}{c|}{Singular}&\multicolumn{3}{c|}{Plural}\\\cline{3-8}
\multicolumn{2}{c|}{}&Neuter&Masculine&Feminine&Masculine&Feminine&Neuter\\\hline
\multicolumn{1}{|c|}{\multirow{2}{*}{I}}&Inclusive&\multicolumn{3}{|c|}{\multirow{2}{*}{O}}&\multicolumn{3}{c|}{X}\\\cline{2-2}\cline{6-8}
&Exclusive&\multicolumn{3}{c|}{}&\multicolumn{3}{c|}{X}\\\hline
\multirow{2}{*}{II}&Informal&\multicolumn{3}{|c|}{X}&\multicolumn{3}{c|}{X}\\\cline{2-8}
&Formal&\multicolumn{6}{|c|}{X}\\\hline
\multirow{2}{*}{III}&Informal&\multicolumn{1}{c|}{\multirow{2}{*}{O}}&X&X&\multicolumn{2}{|c|}{X}&\multicolumn{1}{c|}{\multirow{2}{*}{O}}\\\cline{2-2}\cline{4-7}
&Formal&&\multicolumn{4}{|c|}{X}&\\\hline

\end{tabular}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Disclaimer}

You are free to share, copy and redistribute the material of this site 
in any medium or format for any purpose, even commercially. 
Please give appropriate credit, provide a link to the page, 
and indicate if changes were made. You may do so in any reasonable manner. 
You should not apply legal terms or technological measures, 
that legally restrict others from doing anything that is permitted here.
\\[1pt]

\null\hfill Document Revision: \rev%
\\[1pt]

\null\hfill Jolan Tru\footnote{This is a Romulan Rip-Off}
and \texttt{May the fork() be with you!}\footnote{This is a Jedi Rip-Off}.

% %%%%%%%%%%%%
\end{document}%
% End of document.
% %%%%%%%%%%%%%%%%


{% endraw %}
```

<br>
### [Makefile](Makefile)

```
{% raw %}
# (c) 2021-2021 Rahmat M. Samik-Ibrahim
# REV01 Thu 25 Feb 2021 20:44:03 WIB
# START Thu 25 Feb 2021 19:47:10 WIB

FILE1=tabular

DEPFILES=                \
    $(FILE1).tex         \
    ucls-coat-grey.png   \
    Makefile             \


ALL: $(FILE1).pdf LaTeX01.md

$(FILE1).pdf: $(DEPFILES)
	pdflatex $(FILE1)
	pdflatex $(FILE1)

LaTeX01.md: LaTeX01.pmd 
	python ../assets/scripts/includeScript.py < LaTeX01.pmd > LaTeX01.md

cleanpdf: clean
	rm -f *.pdf

clean:
	rm -f *.aux *.bbl *.blg *.idx *.log *.out *.toc

xfer:
	chmod 644 $(FILE1).pdf
	cp $(FILE1).pdf ~/tmp/

{% endraw %}
```





