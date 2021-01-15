%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Antonio Kim
% Resume LaTeX class file
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\author{Antonio Kim}
% \RequirePackage[dvipsnames]{xcolor} % moved here I guess article class causes option clash with xcolor if used after loading the class
\LoadClass[10pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Resume}[Resume Class]
% \RequirePackage[sfdefault]{noto}
% \RequirePackage{etoolbox}
% \RequirePackage{pgffor}
% \RequirePackage{titlesec}
% \RequirePackage{tikz}
% \RequirePackage{fontspec}
\RequirePackage{geometry} % Document margins
\RequirePackage{hyperref}
% \RequirePackage{fontawesome}
% \RequirePackage{mfirstuc}
% \RequirePackage{ifthen}
% \RequirePackage{lipsum}
\RequirePackage{array}
\RequirePackage{ragged2e}
\RequirePackage{tabularx}

\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{geometry}

\usepackage{tgbonum}

\usepackage{tabularx}
\usepackage{graphicx}

\usepackage[dvipsnames]{xcolor}

% Margins

\geometry{
  a4paper,
  left=0.3in,
  right=0.3in,
  top=0.2in,
  bottom=0.2in,
}

%Setup

\newcommand*{\setname}[1]{\def\@fullname{#1}}
\newcommand*{\setaddress}[1]{\def\@address{#1}}
\newcommand*{\setphone}[1]{\def\@phone{#1}}
\newcommand*{\setposition}[1]{\def\@position{#1}}
\newcommand*{\setemail}[1]{\def\@email{#1}}
\newcommand*{\seteducation}[1]{\def\@education{#1}}
\newcommand*{\setschool}[1]{\def\@school{#1}}
\newcommand*{\setthemecolor}[1]{\def\@themecolor{#1}}
\newcommand*{\setlinkedinname}[1]{\def\@linkedinname{#1}}
\newcommand*{\setlinkedinaccount}[1]{\def\@linkedinaccount{#1}}
\newcommand*{\setgithubname}[1]{\def\@githubname{#1}}
\newcommand*{\setgithubaccount}[1]{\def\@githubaccount{#1}}


\newcommand{\horizontalline}{
  \center\noindent\makebox[\linewidth]{\rule{0.95\paperwidth}{0.8pt}}
}

\definecolor{msblue}{RGB}{47, 84, 150}

\hypersetup{
    colorlinks=true,
    urlcolor=cyan,
}

% View commands
% Header

% % can makebox also be used?
% \newcommand\headerview{
% \begin{minipage}{0.25\linewidth}
%     \profpic{0.22}{images/profilpicture}
% \end{minipage}% 
% \hfill
% \begin{minipage}{0.45\linewidth}
%     \center \name \\[0.05cm] 
%     \contact % address \ mobile \\ mail
% \end{minipage}
% }

% %contactsubviews 

% \newcommand{\githubview}{\href{\@linkedinaccount}{\faLinkedinSquare\ \footnotesize linkedin}}
% \newcommand{\linkedinview}{\href{\@githubaccount}{\faGithubSquare\ \footnotesize github}}

\graphicspath{ {./icons/} }

\def\HSinfo{\rule[-1cm]{0pt}{1.1cm}}

\newcolumntype{L}{>{\hsize=.27\hsize}X}
\newcolumntype{C}{>{\hsize=.5\hsize}X}
\newcolumntype{R}{>{\hsize=.24\hsize}X}
\newcolumntype{I}{>{\hsize=.01\hsize}X}
\newcommand{\singlecell}[2]{\multicolumn{1}{#1}{\small #2}}
\newcommand{\iconcell}[1]{\includegraphics[width=0.01\textwidth]{#1}}

\newcommand{\info}{
  \fontfamily{lmr}\selectfont
  \begin{center}
    \begin{tabularx} {\textwidth} {L C R I}
      & \multicolumn{1}{c}{\LARGE\textbf \@fullname} & & \\
      & \singlecell{c}{\@education} & \singlecell{r}{\color{msblue}\@githubname}   & \iconcell{mark-github-256} \\ 
      & \singlecell{c}{\@school}    & \singlecell{r}{\color{msblue}\@linkedinname} & \iconcell{square-linkedin-512.png} \\ 
      & \singlecell{c}{\@phone}     & \singlecell{r}{\color{msblue}\@email}        & \iconcell{email_icon} \\ 
    \end{tabularx}
  \end{center}
}

% \newcommand{\info}{
%   \fontfamily{lmr}\selectfont
%   \begin{center}
%     \begin{tabularx} {\textwidth} {L C R I}
%       & \multicolumn{1}{c}{\LARGE\textbf \@fullname} & & \\
%       & \singlecell{c}{\@education} & \singlecell{r}{\@githubname}   & \\ 
%       & \singlecell{c}{\@school}    & \singlecell{r}{\@linkedinname} & \\ 
%       & \singlecell{c}{\@phone}     & \singlecell{r}{\@email}        & \\ 
%     \end{tabularx}
%   \end{center}
% }

% \newcommand{\contact}{%
%         {\small \@address  \cps \@mobile \\ \@mail%
%         \\%
%         \linkedinview \cps \githubview \\ 
%         } % 
% }

% % Helper commands

% \newcommand\ruleafter[1]{#1~{\color{black!60!\@themecolor}\hrulefill}} % a trick to put the line with <before> parameter in \titleformat

% %colorfulpipeseperator

% \newcommand{\cps}{{\color{\@themecolor} \quad\textbar\quad}}
% \newcommand{\cpshalf}{{\color{\@themecolor} \hspace{0.2em}\textbar\hspace{0.2em}}}

% \newcommand{\coloredbullet}{{\color{\@themecolor} \textbullet}}

% % Edit section styles

% \titleformat{\section}      % Customise the \section command 
%   {\large\bfseries\scshape\raggedright\color{\@themecolor}} % Make the \section headers large (\Large),
%                                % small capitals (\scshape) and left aligned (\raggedright)
%   {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
%   {\ruleafter}                           % Can be used to insert code before the heading

% \titlespacing*{\section}{-1pt}{0pt}{0pt}

% % Textview commands

% \newcommand{\experience}[2]{%
%   \mbox { \hspace{1em} \scshape \textbf{#1} }%
% }

% \newcommand{\datetext}[1]{%
% {\itshape  \footnotesize \mdseries  \color{black!60!\@themecolor} #1 } 
% }

% \newcommand{\datedexperience}[2]{%
%   \begin{small} \mbox { \hspace{1em} \scshape \textbf{#1} } \end{small} \hfill \datetext{#2}\\[0.01cm] %
% }

% \newcommand{\explanation}[1]{%
%     \mbox { \scshape \hspace{1.2em} \footnotesize #1}\\[0.05cm]
% }

% \newcommand{\explanationdetail}[1]{%
%     \indent \begin{minipage}{0.96\linewidth} \footnotesize #1 \end{minipage} \\[0.1cm]
% }

% \newcommand{\itemwithtext}[1]{%
%     \begin{minipage}{\linewidth} \footnotesize \item #1 \end{minipage}
% }

% \newcommand{\addblocktext}[2]{%
%   \section{#1} 
%   \indent \explanationdetail{\hspace{4ex} #2}
% }

% \newcommand\createskill[2]{%
%     \textsc{\textbf{#1}} & #2
% }

% \newcommand\createtablecontent[1]{%
%     \foreach \x [count=\xi] in {#1} {\ifthenelse{\xi=1}{\x}{\\ \x}}
% }

% \newcommand\createskillsanothertry[1]{%not used
%   \begin{tabular}{r|l}
%       \createtablecontent{#1}
%         \end{tabular}
% }

% \newcommand\createskills[1]{%
% \explanationdetail{
%   \begin{tabular}{rl}
%     \makeatletter
%     \@for\thisitem:=#1\do{\thisitem\\[0.1cm]}
%     \makeatother
%     \end{tabular}
% }
% }

% \newcommand\createbullets[1]{%
%     \renewcommand{\labelitemi}{\coloredbullet}
%   \begin{itemize}
%     \makeatletter
%     \@for\thisitem:=#1\do{\itemwithtext{\thisitem}}
%     \makeatother
%   \end{itemize}
% }

% \newcommand\createfootnote{%
%   \renewcommand{\footnotesize}{\fontsize{7pt}{11pt}\selectfont}
%     \renewcommand\footnoterule{\rule{0.3\linewidth}{0.5pt}}
%     \let\thefootnote\relax\footnote{\today\ / \href{https://github.com/muratcankaracabey/latex_cv}{source code}}}