---
layout: "layout"
title:  "Beamer Presentation with LaTeX"
permalink: /LaTeX02/
---

* [Downloard TARBALL](../tarballs/LaTeX02.tar.bz2)
* [PDF](os00.pdf)

<br>
### os00.tex

```
{% raw %}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Beamer Presentation - LaTeX - Template Version 1.0 (10/11/12)
% This template has been downloaded from: http://www.LaTeXTemplates.com
% License: % CC BY-NC-SA 3.0 (http://creativecommons.org/)
% Modified by Rahmat M. Samik-Ibrahim

% REV002 Fri 23 Jul 2021 13:43:37 WIB
% STARTX Wed Aug 24 19:34:33 WIB 2016
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PACKAGES AND THEMES ZCZC
\documentclass[xcolor=table, notheorems, hyperref={pdfpagelabels=false}]{beamer}
\input{beamer.tex}
\input{osHH.tex}

% XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
% The short title appears at the bottom of every slide, 
% the full title is only on the title page
% \date{\today}
\title[\kopikopi]
{CSF2600505 Sistem Operasi   \\
CSGE602055 Operating Systems \\ 
Week 00:
Overview 1} 
\author{Rahmat M. Samik-Ibrahim (ed.)}
\institute[UI]
{
University of Indonesia\\ 
\medskip
\url{https://os.vlsm.org/Slides/os00.pdf}
\\ \texttt{Always check for the latest revision!}
}
\date{\revision}

% XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
\begin{document}

\lstset{
basicstyle=\ttfamily\tiny, % \tiny \small \footnotesize 
breakatwhitespace=true,
language=C,
columns=fullflexible,
keepspaces=true,
breaklines=true,
tabsize=3, 
showstringspaces=false,
extendedchars=true}

\section{Start}
\begin{frame}
\titlepage
\end{frame}

% XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

\label{laman}
\input{osII-jadwal.tex}

% XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
% Throughout your presentation, if you choose to use \section{} and 
% \subsection{} commands, these will automatically be printed on 
% this slide as an overview of your presentation
\section{Agenda}
\begin{frame}{Outline}
  \frametitle{Agenda}
  \tableofcontents[sections={1-3}]
\end{frame}
\begin{frame}
   \frametitle{Agenda (2)}
   \tableofcontents[sections={4-}]
\end{frame}

% XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
\section{Week 00 Assignment}
\begin{frame}[fragile]
\frametitle{Week 00 Assignment}
% \large(54) \small(65) \footnotesize(72) \tiny(108) 
% \begin{lstlisting}[basicstyle=\ttfamily\small]
% \begin{lstlisting}[basicstyle=\ttfamily\footnotesize]
% \begin{lstlisting}[basicstyle=\ttfamily\tiny]
\begin{lstlisting}[basicstyle=\ttfamily\large]

# Fri 23 Jul 2021 13:39:47 WIB

#include <stdio.h>

int main(void)
{
    printf("As.w.w.\n");
}

\end{lstlisting}
\end{frame}

% XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
\input{os00-BRP.tex}
\input{os00-TIPS.tex}
\input{os00-check.tex}

\end{document}

{% endraw %}
```

<br>
### [Makefile](Makefile)

```
{% raw %}
# REV003 Fri 23 Jul 2021 22:00:00 WIB
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
all: $(PDFFILES)

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
         # # This is GitHub Page related. You might delete it ###############
	 python ../assets/scripts/includeScript.py < LaTeX02.pmd > LaTeX02.md

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

{% endraw %}
```

