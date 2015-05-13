% --- Class structure: declaration of options part
% ---
% This class extends the scrbook class
% Read all the documentclass options; pass them to scrbook,
% unless the file "<currentoption>.min" exists, then it is loaded
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis-phd-itt}[2015/05/01 v0.1 LaTeX document class]

\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
\PassOptionsToClass{\CurrentOption}{book}}}

% --- Class structure: execution of options part
% ---
\ProcessOptions \relax
% --- Class structure: declaration of options part
% ---
\LoadClass[
	twoside,
	11pt,
	b5paper,
	openright
]{book}

\usepackage{lipsum}
\usepackage[
	%eulerchapternumbers,
	dottedtoc,
	parts,
	pdfspacing
]{thesis-phd-itt}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{acronym}
\usepackage{graphicx}
\usepackage{kpfonts}
\usepackage{imakeidx}
\usepackage[
	%showframe,
	b5paper,
	textwidth = 120mm,
	inner = 35mm	
]{geometry}

%\let\chead\undefined
%\let\cfoot\undefined
%\usepackage{fancyhdr}
%\fancyhf{} % clear all header and footers
%\renewcommand{\headrulewidth}{0pt} % remove the header rule
%\fancyfoot[LE,RO]{\thepage} % Left side on Even pages; Right side on Odd pages
%\pagestyle{fancy}
%\fancypagestyle{plain}{%
%	\fancyhf{}%
%	\renewcommand{\headrulewidth}{0pt}%
%	\fancyhf[lef,rof]{\thepage}%
%}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\newcommand\titlespanish[1]{\renewcommand\@titlespanish{#1}}
\newcommand\@titlespanish{}
\newcommand\fecha[1]{\renewcommand\@fecha{#1}}
\newcommand\@fecha{}

\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {}
\examiner    {}
\degree      {}
\authors     {}
\university  {\texorpdfstring{\href{http://tectijuana.edu.mx/}{Instituto Tecnol\'{o}gico de Tijuana}}{Instituto Tecnol\'{o}gico de Tijuana}}

\UNIVERSITY  {\texorpdfstring{\href{http://tectijuana.edu.mx/}{Instituto Tecnol\'{o}gico de Tijuana}}{Instituto Tecnol\'{o}gico de Tijuana}}

\department  {\texorpdfstring{\href{http://tectijuana.edu.mx/doctorado-en-ciencias-de-la-ingenieria/}
		{Departamento de Posgrado en Ciencias de la Ingenier\'{\i}a}}
	{Departamento de Posgrado en Ciencias de la Ingenier\'{\i}a}}
\DEPARTMENT  {\texorpdfstring{\href{http://tectijuana.edu.mx/doctorado-en-ciencias-de-la-ingenieria/}
		{Departamento de Posgrado en Ciencias de la Ingenier\'{\i}a}}
	{Departamento de Posgrado en Ciencias de la Ingenier\'{\i}a}}
\group       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
		{Research Group Name}}
	{Research Group Name}}
\GROUP       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
		{RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
	{RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
\faculty     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
		{Faculty Name}}
	{Faculty Name}}
\FACULTY     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
		{FACULTY NAME (IN BLOCK CAPITALS)}}
	{FACULTY NAME (IN BLOCK CAPITALS)}}
\addresses   {}
\subject     {}
\keywords    {}

% Titlepage
\renewcommand\maketitle{
	\btypeout{Title Page}
	\hypersetup{pdftitle={\@title}}
	\hypersetup{pdfsubject=\subjectname}
	\hypersetup{pdfauthor=\authornames}
	\hypersetup{pdfkeywords=\keywordnames}
	\thispagestyle{empty}
	\begin{titlepage}
		{\LARGE\raggedright\textsc{\authornames}\par}
		{\huge\bf\raggedright\textsc{\@title}\par}
		\vfil\null
	\end{titlepage}
%	\cleardoublepage
	\begin{titlepage}
		\let\footnotesize\small
		\let\footnoterule\relax
		\let \footnote \thanks
		\setcounter{footnote}{0}
		\null\vfil
		\vskip 10\p@
		\begin{center}
			\setlength{\parskip}{0pt}
			{\large\textsc{\UNIVNAME}\par}
			\vfill
			\includegraphics[width=0.25\textwidth]{logo_itt}
			\vfill
			{\huge \bf \textsc{\@title} \par}
			\vfill
			{\LARGE \textsc{by} \par}
			\smallskip
			{\LARGE \textsc{\authornames} \par}
			\vfill
			{\large \textsc{A thesis submitted in partial fulfillment for the} \par}
			{\large \textsc{degree of Doctor of Philosophy} \par}
			\bigskip
			\bigskip
			{\large \textsc{in the} \par}
			{\large \textsc{\deptname} \par}
			\bigskip
			\bigskip
			\bigskip
			{\Large \textsc{\@date} \par}
		\end{center}
		\par
		\@thanks
		\vfil\null
	\end{titlepage}	
	\begin{titlepage}
		\let\footnotesize\small
		\let\footnoterule\relax
		\let \footnote \thanks
		\setcounter{footnote}{0}
		\null\vfil
		\vskip 10\p@
		\begin{center}
			\setlength{\parskip}{0pt}
			{\large\textsc{\UNIVNAME}\par}
			\vfill
			\includegraphics[width=0.25\textwidth]{logo_itt}
			\vfill
			{\huge \bf \textsc{\@titlespanish} \par}
			\vfill
			{\LARGE \textsc{por} \par}
			\smallskip
			{\LARGE \textsc{\authornames} \par}
			\vfill
			{\large \textsc{Tesis sometida como cumplimiento parcial para} \par}
			{\large \textsc{obtener el grado de Doctor en Ciencias} \par}
			\bigskip
			\bigskip
			{\large \textsc{en el} \par}
			{\large \textsc{\deptname} \par}
			\bigskip
			\bigskip
			\bigskip
			{\Large \textsc{\@fecha} \par}
		\end{center}
		\par
		\@thanks
		\vfil\null
	\end{titlepage}	
		
	\setcounter{footnote}{0}%
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax			
}

% Definition for Big letter at the beginning of a paragraph
\def\PARstart#1#2{\begingroup\def\par{\endgraf\endgroup\lineskiplimit=0pt}
	\setbox2=\hbox{\textsc{#2} }\newdimen\tmpht \tmpht \ht2
	%    \setbox2=\hbox{\uppercase{#2} }\newdimen\tmpht \tmpht \ht2
	\advance\tmpht by \baselineskip\font\hhuge=cmr10 at \tmpht
	\setbox1=\hbox{{\hhuge #1}}
	\count7=\tmpht \count8=\ht1\divide\count8 by 1000 \divide\count7
	by\count8
	\tmpht=.001\tmpht\multiply\tmpht by \count7\font\hhuge=cmr10 at
	\tmpht
	\setbox1=\hbox{{\hhuge #1}} \noindent \hangindent1.05\wd1
	\hangafter=-2 {\hskip-\hangindent
		\lower1\ht1\hbox{\raise1.0\ht2\copy1}%
		\kern-0\wd1}\copy2\lineskiplimit=-1000pt}

\pagestyle{scrheadings}  
