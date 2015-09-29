\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}

% package to load hyperlinks
\usepackage{hyperref}

% disable indent globally
\setlength{\parindent}{0pt} 
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}                
% use fontawesome
\RequirePackage{fontawesome}

\RequirePackage[
  a4paper,
  left=0.75in,
  right=0.75in,
  top=0.75in,
  bottom=0.75in,
  nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.8}{*1.8}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1.8}{*0.6}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
  \vspace{1.5ex}
}
\newcommand{\focus}[2]{
  \centerline{\large{{#1}\textperiodcentered {#2}}}
  \vspace{1.5ex}
}
\newcommand{\contactInfo}[3]{
  \centerline{\large{\href{mailto:#1}{\faEnvelopeO}\ {#1}\textperiodcentered \href{tel:#2}{\faPhone}\ {#2}\textperiodcentered \href{https://www.linkedin.com/in/#3}{\faLinkedin}\ \href{https://github.com/#3}{\faGithub}\ {#3}}}
  \vspace{1.5ex}
}
\newcommand{\basicContactInfo}[3]{
  \centerline{\large{\faEnvelopeO\ {#1} \textperiodcentered {{\Large\faMobile}\ {#2}}}}
  \vspace{1.5ex}
}
\newcommand{\company}[2]{
  {\par #1 \hfill #2 \par}
  \vspace{0.5ex}
}
\newcommand{\nspace}[0]{
  \vspace{1mm}
}
\newcommand{\nspacen}[0]{
  \vspace{0.75mm}
}