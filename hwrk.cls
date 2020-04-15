\ProvidesClass{hwrk}


\LoadClass{article}


\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{keyval}%
\RequirePackage{amsmath, amssymb, amsfonts}
\RequirePackage{extramarks}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}

% Enviroment definitions
\newcommand{\enterProblemHeader}[1]{
	\nobreak\extramarks{}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
	\nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
}

\newcommand{\exitProblemHeader}[1]{
	\nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
	\stepcounter{#1}
	\nobreak\extramarks{Problem \arabic{#1}}{}\nobreak{}
}

\setcounter{secnumdepth}{0}
\newcounter{partCounter}
\newcounter{ProblemCounter}
\setcounter{ProblemCounter}{1}
\nobreak\extramarks{Problem \arabic{ProblemCounter}}{}\nobreak{}

\newenvironment{Problem}[1][-1]{
	\ifnum#1>0
		\setcounter{ProblemCounter}{#1}
	\fi
	\section{Problem \arabic{ProblemCounter}}
	\setcounter{partCounter}{1}
	\enterProblemHeader{ProblemCounter}
}{
	\exitProblemHeader{ProblemCounter}
}


% Header settings
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}


%% Default values
\def\name{Hi}
\def\matrnr{Matrikelnr}
\def\modul{Modul }
\def\shtnr{0}
\def\grp{0}
\def\tut{0}

\AtBeginDocument{
\lhead{\name} % Name
\chead{\textbf{\modul -- \shtnr}} % Modul - UeB NR
\rhead{\matrnr} % Matrikelnr
\lfoot{\textbf{Tutor:} \tut} % Tutor: Name
\rfoot{\textbf{Group:} \grp} % Group: NR
}
