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
\RequirePackage{tikz}
\RequirePackage[skins]{tcolorbox}
\RequirePackage[default,opentype]{sourcesanspro}

\definecolor{h1}{HTML}{000000}
\definecolor{hline}{HTML}{A7A7A7}
\definecolor{user}{HTML}{000000}
\definecolor{location}{HTML}{000000}
\definecolor{linkedin}{HTML}{000000}
\definecolor{skype}{HTML}{000000}
\definecolor{black}{HTML}{000000}
\definecolor{mobile}{HTML}{000000}
\definecolor{mail}{HTML}{000000}

%header section
\newcommand*{\header}[1]{{\sourcesanspro\fontsize{20pt}{1em}\bfseries\color{h1} #1}}
\newcommand*{\headerIcon}[1]{{\fontsize{20pt}{1em}\color{h1} #1}}

%aboutme section
\newcommand*{\user}[0]{{\sourcesanspro\fontsize{12pt}{1em}\color{user}\faUser\newline}}
\newcommand*{\location}[0]{{\sourcesanspro\fontsize{12pt}{1em}\color{location}\faMapMarker}\newline}
\newcommand*{\mobile}[0]{{\sourcesanspro\fontsize{12pt}{1em}\color{mobile}\hspace{1pt}\faMobile}\newline}
\newcommand*{\mail}[0]{{\sourcesanspro\fontsize{12pt}{1em}\color{mail}\faEnvelopeO}\newline}
\newcommand*{\linkedin}[0]{{\sourcesanspro\fontsize{12pt}{1em}\color{linkedin}\faLinkedinSquare}\newline}
\newcommand*{\skype}[0]{{\sourcesanspro\fontsize{12}{1em}\color{skype}\faSkype\hspace{5pt}}}
\newcommand*{\normalText}[1]{{\sourcesanspro\fontsize{12pt}{1em}\mdseries\color{black}#1}}
\newcommand*{\boldText}[1]{{\sourcesanspro\fontsize{12pt}{1em}\bfseries\color{black}#1}}
\newcommand*{\dateText}[1]{{\sourcesanspro\fontsize{12pt}{1em}\bfseries\color{hline}#1}}
\newcommand*{\dateTextt}[1]{{\sourcesanspro\fontsize{12pt}{1em}\mdseries\color{hline}#1}}

%skills
\newcommand*{\skill}[1]{{\sourcesanspro\fontsize{12pt}{5em}\color{h1} #1}}

\newcommand{\cvsection}[2]{
  	{
      \headerIcon{\faicon{#1} \space}      
  		\header{#2}
  		\newline
  		\color{hline}\noindent\rule{\textwidth}{2pt}
      \vspace{-4mm}
  	}
}

\newcommand{\hlinethin}[0]{
  {
    \color{hline}\noindent\rule{\textwidth}{1pt}
  }
}

\newcommand{\vlinee}[0]{
  {
    \color{hline}\vrule width 1pt
  }
}
\newcommand{\photo}[1]{
  {
    \begin{flushright}
    \begin{tikzpicture}
        \node[circle,draw,inner sep=#1,fill overzoom image=photo] (A) {};
    \end{tikzpicture}
    \end{flushright}
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
