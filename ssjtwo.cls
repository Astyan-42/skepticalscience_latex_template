

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
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{nccmath}
\RequirePackage{authblk}
\RequirePackage[colorlinks=true,urlcolor=black,linkcolor=black]{hyperref}
\RequirePackage[latin1]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{setspace}
\RequirePackage{color}
\RequirePackage{geometry}

% margin
% to do better margin
\geometry{margin=0.7in}

%option 

\newcommand{\headlinecolor}{\normalcolor}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\ProcessOptions\relax


% def

\def\article{}
\def\endarticle{}
\def\abstract{\section{Abstract}}
\def\endabstract{}
\def\materials{\section{Materials and Methods}}
\def\endmaterials{}
\def\definition{\subsection{Definition}}
\def\enddefinition{}
\def\theorem{\subsection{Theorem}}
\def\endtheorm{}
\def\acknowledgments{\textit{Acknowledgments}}
\def\endacknowledgments{}
\def\interestconflits{\textit{Conflict of interest statement}}
\def\endinterestconflitss{}
\def\bias{\textit{Bias}}
\def\endbias{}
% redefine only because of the nccmath module


%\renewcommand\abstractname{Abstract}




%commandes

% redefine the title
%\renewcommand{\maketitle}{
%	\twocolumn[
%	\fontsize{72}{80}\fontfamily{phv}\fontseries{b}%
%	\fontshape{sl}\selectfont\headlinecolor
%	\@title]
%}


% redefine the ways the section is printed
\renewcommand\section{
	\@startsection {section}{1}{\z@}
    {-1ex \@plus -1ex \@minus -1ex}
    {0.1ex \@plus.2ex}
    {\Large\scshape\bfseries}
}

% section have no number
\setcounter{secnumdepth}{0}