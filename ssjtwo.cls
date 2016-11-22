

  %*****************************************************************%
  %*                                                               *%
  %*     Prepared by Aurélien Vezin                                *%
  %*     Copyright (C) 2016 by Aurélien Vezin,                     *%
  %*     Licence A-GPLv3                                           *%
  %*                                                               *%
  %*****************************************************************%

% detail about the cls
\def\currversion{September 24, 2016}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ssjtwo}

% options

% base class
\LoadClassWithOptions{article}

% packages
\RequirePackage{graphicx}
\RequirePackage{datetime}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{nccmath}
\RequirePackage{authblk}
\RequirePackage{lastpage}
\RequirePackage[colorlinks=true,urlcolor=black,linkcolor=black]{hyperref}
\RequirePackage[latin1]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{setspace}
\RequirePackage{color}
\RequirePackage{geometry}
\RequirePackage{helvet}
\RequirePackage{fancyhdr}
%\RequirePackage{balance} % temporary
\RequirePackage{flushend} % temporary
%\RequirePackage{multicol}

% define new color
\definecolor{orange}{RGB}{255,102,0}
\definecolor{greentitle}{RGB}{51,102,51}

% margin
% to do better margin
\geometry{margin=0.7in}

% define the space between column
\setlength\columnsep{4mm}

% define the parameter skip % not used because not pretty
%\setlength\parskip{2.5mm}

% header code
% adding a date format for the header
\newdateformat{headerdate}{\THEYEAR-\twodigit{\THEMONTH}-\twodigit{\THEDAY}}
% new header properties
\newcommand*{\doi}[1]{\gdef\@doi{#1}}
\newcommand*{\@doi}{10.4000/exemple.35942}
% do the header code
\pagestyle{fancy}
\fancyhf{}
\rhead{\thepage/\pageref{LastPage}}
\chead{SIS \headerdate\today}
\lhead{DOI: \@doi}

%option
%bibliography name redone property
\renewcommand\refname{} %  empty the title
\let\oldbibliography\bibliography % define oldbibliography to allow a recursive use
\renewcommand{\bibliography}[1]{\begingroup%
   						           \renewcommand{\section}[2]{}% only for this group, delete the title
 						           \oldbibliography{#1}% call of blibliography
						        \endgroup}% 
% get arial
\renewcommand{\familydefault}{\sfdefault}
% set green as headlinecolor (don't work ?)
\newcommand{\headlinecolor}{\normalcolor}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{greentitle}}}
\ProcessOptions\relax

% new title properties

\newcommand*{\publicationstatus}[1]{\gdef\@publicationstatus{#1}}
\newcommand*{\@publicationstatus}{submited/published/refused}
\newcommand*{\publicationwarning}[1]{\gdef\@publicationwarning{#1}}
\newcommand*{\@publicationwarning}{Warning about possible biais/Publication verified without biais}
\newcommand*{\journalname}[1]{\gdef\@journalname{#1}}
\newcommand*{\@journalname}{Skeptical Inquiry of Science}
\newcommand*{\titlein}[1]{\gdef\@titlein{#1}}
\newcommand*{\@titlein}{ in }


% def

\def\article{}
\def\endarticle{}
\def\abstract{\bfseries}
\def\endabstract{}
\def\acknowledgments{\bigskip\textit{\textbf{Acknowledgments}}\itshape}
\def\endacknowledgments{}
% new command for abbrevations
\newcommand{\abbreviations}[1][\medskip\fontsize{10}{12}\selectfont\noindent]{#1}

%commandes
% redefine the title
\renewcommand\Authfont{\fontsize{13}{15.6}\fontseries{b}\selectfont}
\renewcommand\Affilfont{\fontsize{12}{14.4}\fontseries{m}\selectfont}

\renewcommand{\maketitle}{
	\twocolumn[{\fontsize{26}{31.2}\bfseries\selectfont\headlinecolor\@title\par}
			   {\@author\par}
			   {\medskip\@publicationstatus\@titlein\@journalname\par}
			   {\medskip\bfseries\color{orange}\selectfont\@publicationwarning\par\vspace{2.5mm}}]
}

% to only have the subsubsection number
%\renewcommand{\thesubsubsection}{\arabic{subsubsection}}

% redefine the ways the section is printed need to change the spaces
\renewcommand\section{
	\@startsection {section}{1}{\z@}%
    {0.30cm}%
    {0.10cm}%
    {\fontsize{20}{24}\scshape\bfseries\headlinecolor}}%


% redefine the ways the subsection is printed need to change the spaces
\renewcommand\subsection{
	\@startsection {subsection}{2}{\z@}%
    {0.30cm}%
    {0.10cm}%
    {\fontsize{16}{19.2}\scshape\bfseries\headlinecolor}}%

\renewcommand\subsubsection{
	\@startsection {subsubsection}{3}{\z@}%
    {0.15cm}%
    {0.05cm}%
    {\fontsize{13}{15.6}\bfseries\headlinecolor}}%

%no bibliography name


% section have no number
%\setcounter{secnumdepth}{0}

% need to check the way the bibliography print
% bibliography : need to be on a new part
% makebst