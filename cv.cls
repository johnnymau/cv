\ProvidesClass{cv}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{ragged2e}
\RequirePackage{parskip}
\RequirePackage{geometry}
\RequirePackage{fontawesome}
\RequirePackage{xcolor}
%\RequirePackage{multicol}

\definecolor{section}{HTML}{808080}

\newcommand{\cvsection}[2]{
  	{
  		\fontsize{16pt}{5em}
  		\color{section}
  		\faicon{#1}
  		#2
  		\newline
  		\noindent\rule{\textwidth}{1pt}
  	}
}
		
\newcommand{\aboutme}[1]{
	{
		\begin{justify}
		\setlength\parindent{0pt}
		\setlength\parskip{5pt}
		#1
		\end{justify}
	}
}
