\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{hfutreport}
[2021/04/23 v1.0 Standard LaTeX Template for HFUT_Course_Report_Template]
%% Inital Code
\newif\if@hfutrp@bwprint\@hfutrp@bwprintfalse
% tokens definition
%%%% COVER
\newcommand\hfutrp@tokens@title{}
\newcommand*\hfutrp@tokens@stunum{}
\newcommand*\hfutrp@tokens@stuname{}
\newcommand*\hfutrp@tokens@stuclass{}
\newcommand*\hfutrp@tokens@supervisor{}
\newcommand*\hfutrp@tokens@dateinput{}
\newcommand*\hfutrp@tokens@maincontent{}

% 没有
%% Declaration of Options
\DeclareOption{colorprint}{\@hfutrp@bwprintfalse}
\DeclareOption{bwprint}{\@hfutrp@bwprinttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%% Executing of Options
\ExecuteOptions{colorprint}
\ProcessOptions\relax
%% Loading Class
\LoadClass[a4paper,12pt,fancyhdr]{article}
%% Loading Package
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{hfutreport}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
	Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 支持中文的 ctex 宏包
\RequirePackage{ctex}
% 页面布局
\RequirePackage{geometry}
% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
%\RequirePackage{titletoc}
% 设置颜色
\RequirePackage{xcolor}
% 插入图片
\RequirePackage{graphicx}
\RequirePackage{float}
% 表格
\RequirePackage{array}
%% 长表格
\RequirePackage{longtable}
%% booktabs 提供了\toprule 等命令.
\RequirePackage{booktabs,tabularx}
%% multirow 支持在表格中跨行
\RequirePackage{multirow}
%% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
%% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 封面固定列宽
\RequirePackage{makecell}
% 保护脆落命令
\RequirePackage{cprotect}
% 设置代码环境
\RequirePackage{listings}
\RequirePackage{xcolor}
% 插入链接
\RequirePackage{url}
% 绘图的包
%\RequirePackage{tikz}
%\usetikzlibrary{snakes}

% 字图与子标题
\RequirePackage{subcaption}
\RequirePackage[titles]{tocloft}
%\renewcommand{\cftdot}{$\cdot$}
%\renewcommand{\cftsecdotsep}{1.5}
\renewcommand{\cftsecdotsep}{4.5}
\setlength{\cftbeforesecskip}{7pt}
\setlength{\cftbeforesubsecskip}{3pt}
%\setlength{\cftbeforesubsecskip}{5pt}
\renewcommand{\cftsecfont}{\bfseries\zihao{-4}\heiti}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecaftersnumb}{\hskip.4em}



\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
	frame=tb,
	aboveskip=3mm,
	belowskip=3mm,
	showstringspaces=false,
	columns=flexible,
	framerule=1pt,
	rulecolor=\color{gray!35},
	backgroundcolor=\color{gray!5},
	basicstyle={\small\ttfamily},
	numbers=none,
	numberstyle=\tiny\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	breaklines=true,
	breakatwhitespace=true,
	tabsize=3,
}
% 首行缩进
\RequirePackage{indentfirst}
% 设置浮动体的标题
\RequirePackage{caption}
% 定制列表环境
\RequirePackage{enumitem}
% 下划线
\RequirePackage{ulem}
% 尺寸计算
\RequirePackage{calc}

\RequirePackage[titletoc,title]{appendix}

%\RequirePackage[title,toc,titletoc]{appendix}

\RequirePackage{etoolbox}
\AtBeginEnvironment{thebibliography}{%
	\phantomsection
	\addcontentsline{toc}{section}{\refname}
}
% 超链接 hyperref 的设置
\RequirePackage{hyperref}
% 智能自动化交叉引用
\RequirePackage{cleveref}
%% Document Layout
% 页面布局
\geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
\renewcommand*{\baselinestretch}{1.38}
% 修改tabular 环境, 设置表格中的行间距为正文行间距.
\let\hfutrp@oldtabular\tabular
\let\hfutrp@endoldtabular\endtabular
\renewenvironment{tabular}%
{\bgroup%
	\renewcommand{\arraystretch}{1.38}%
	\hfutrp@oldtabular}%
{\hfutrp@endoldtabular\egroup}
% 每行缩进两个汉字
\setlength\parindent{2em}
% 设置字体
\setmainfont{Times New Roman}
%\setmonofont{Courier New}
\setsansfont{Arial}
\setCJKfamilyfont{kai}[AutoFakeBold]{simkai.ttf}
\newcommand*{\kai}{\CJKfamily{kai}}
\setCJKfamilyfont{song}[AutoFakeBold]{SimSun}
\newcommand*{\song}{\CJKfamily{song}}

\renewcommand\normalsize{%
	\@setfontsize\normalsize{12.05}{14.45}%
	\abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
	\abovedisplayshortskip \z@ \@plus3\p@
	\belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@}
% 数学环境, 定理等设置
\newtheorem{definition}{\hfutrp@cap@definition}
\newtheorem{theorem}{\hfutrp@cap@theorem}
\newtheorem{lemma}{\hfutrp@cap@lemma}
\newtheorem{corollary}{\hfutrp@cap@corollary}
\newtheorem{assumption}{\hfutrp@cap@assumption}
\newtheorem{conjecture}{\hfutrp@cap@conjecture}
\newtheorem{axiom}{\hfutrp@cap@axiom}
\newtheorem{principle}{\hfutrp@cap@principle}
\newtheorem{problem}{\hfutrp@cap@problem}
\newtheorem{example}{\hfutrp@cap@example}
\newtheorem{proof}{\hfutrp@cap@proof}
\newtheorem{solution}{\hfutrp@cap@solution}

% 浮动环境设置
% 默认情况下, \LaTeX{} 要求每页的文字至少占据 20%,否则该页就只单独放置一个浮动环境,
% 而这通常不是我们想要的, 我们将这个要求降低到 5%.
\renewcommand*{\textfraction}{0.05}
% 有时如果多个浮动环境连续放在一起, \LaTeX{}
% 会将它们分在几个不同页，即使它们可在同一页放
% 得下. 我们可以通过修改 |\topfraction| 和 |\bottomfraction| 分别设置顶端和底端的浮
% 动环境的最大比例.
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
% 有时\LaTeX{}会把一个浮动环境单独放在一页,
% 我们要求这个环境至少要占据 85% 才能单独放在一页.
% 注意:  |\floatpagefraction| 的数值必须小于 |\topfraction|.
\renewcommand*{\floatpagefraction}{0.85}
% 关于图片 graphicx
% 如果图片没有指定后缀, 依次按下列顺序搜索
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
% 设置图表搜索路径, 可以给图表文件夹取如下名字
\graphicspath{{figures/}{figure/}{pictures/}%
	{picture/}{pic/}{pics/}{image/}{images/}}
% 图表标题
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 图的字体, 宋体小四
	position=bottom % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\captionsetup[table]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 表的字体, 宋体小四
	position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
% 列表环境设置
\setlist{%
	topsep=0.3em, % 列表顶端的垂直空白
	partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
	itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
	parsep=0pt, % 列表项内的段落之间的垂直空白
	leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
	rightmargin=0em, % 环境的右边界和列表之间的水平距离
	labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
	labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}

% 超链接
\hypersetup{%
	%         xetex,
	% unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
	pdfstartview=FitH,
	CJKbookmarks=true,
	bookmarksnumbered=true,
	bookmarksopen=true,
	colorlinks, %注释掉此项则交叉引用为彩色边框(将colorlinks和pdfborder同时注释掉)
	pdfborder=001,   %注释掉此项则交叉引用为彩色边框
	allcolors=black,
	pdftitle=\@title,
	pdfauthor=\hfutrp@tokens@stuname,
	breaklinks=true}%
% \if@hfutrp@bwprint
% \AtBeginDocument{\hypersetup{hidelinks}}
% \else\relax\fi
\pdfstringdefDisableCommands{%
	\def\cftdotfill{ }%
}
\lstnewenvironment{tcode}
{
	\lstset{basicstyle = \small\ttfamily,
		language=TeX,
		tabsize = 4,
		frame = single,
		escapechar = `,
		breaklines = true,
		breakatwhitespace = true,
		frameround = tttt,
	}
}
{}
%%% crefformat settings
\crefformat{figure}{#2图~#1#3}
\crefrangeformat{figure}{图~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{figure}{图~(#2#1#3)}{和~(#2#1#3)}{，(#2#1#3)}{和~(#2#1#3)}

\crefformat{table}{#2表#1#3}
\crefrangeformat{table}{表(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{table}{表~(#2#1#3)}{和~(#2#1#3)}{，(#2#1#3)}{和~(#2#1#3)}

\crefformat{equation}{#2~(#1#3)}
\crefrangeformat{equation}{~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{equation}{~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{definition}{#2\hfutrp@cap@definition~#1#3}
\crefrangeformat{definition}{\hfutrp@cap@definition~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{definition}{\hfutrp@cap@definition~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{theorem}{#2\hfutrp@cap@theorem~#1#3}
\crefrangeformat{theorem}{\hfutrp@cap@theorem~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{theorem}{\hfutrp@cap@theorem~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{lemma}{#2\hfutrp@cap@lemma~#1#3}
\crefrangeformat{lemma}{\hfutrp@cap@lemma~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{lemma}{\hfutrp@cap@lemma~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{corollary}{#2\hfutrp@cap@corollary~#1#3}
\crefrangeformat{corollary}{\hfutrp@cap@corollary~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{corollary}{\hfutrp@cap@corollary~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{assumption}{#2\hfutrp@cap@assumption~#1#3}
\crefrangeformat{assumption}{\hfutrp@cap@assumption~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{assumption}{\hfutrp@cap@assumption~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{conjecture}{#2\hfutrp@cap@conjecture~#1#3}
\crefrangeformat{conjecture}{\hfutrp@cap@conjecture~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{conjecture}{\hfutrp@cap@conjecture~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{axiom}{#2\hfutrp@cap@axiom~#1#3}
\crefrangeformat{axiom}{\hfutrp@cap@axiom~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{axiom}{\hfutrp@cap@axiom~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{principle}{#2\hfutrp@cap@principle~#1#3}
\crefrangeformat{principle}{\hfutrp@cap@principle~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{principle}{\hfutrp@cap@principle~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{problem}{#2\hfutrp@cap@problem~#1#3}
\crefrangeformat{problem}{\hfutrp@cap@problem~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{problem}{\hfutrp@cap@problem~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{example}{#2\hfutrp@cap@example~#1#3}
\crefrangeformat{example}{\hfutrp@cap@example~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{example}{\hfutrp@cap@example~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{proof}{#2\hfutrp@cap@proof~#1#3}
\crefrangeformat{proof}{\hfutrp@cap@proof~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{proof}{\hfutrp@cap@proof~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}

\crefformat{solution}{#2\hfutrp@cap@solution~#1#3}
\crefrangeformat{solution}{\hfutrp@cap@solution~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{solution}{\hfutrp@cap@solution~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Document Markup

% 生成封面, 使用\maketitle
\renewcommand{\maketitle}{\par
	\begingroup
	\newpage
	\global\@topnum\z@   % Prevents figures from going at top of page.
	\@maketitle
	\endgroup
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
}
\def\@maketitle{%
	\newpage
	\thispagestyle{empty}
	% COVER
	\begin{center}
		% Upper part of the page
		\includegraphics[width=0.68\textwidth]{figures/HFUT_font_zh-ch}\\[1cm]    
		
		{\fontsize{70pt}\baselineskip 课\qquad\ 程\qquad\ 设\qquad\ 计}\\[7cm]
		
		% Author and supervisor
		\begin{center}
			\begin{large}
				\begin{tabular}{rc}
					\zihao{3}{设计题目}& \zihao{-3}{\@title}\\
					\cline{2-2}\\
					\zihao{3}{学生姓名}& \zihao{-3}{\hfutrp@tokens@stuname}\\
					\cline{2-2}\\
					\zihao{3} {学\qquad 号} & \hspace{1.7cm} \zihao{-3} {\hfutrp@tokens@stunum\hspace{1.7cm}} \\
					\cline{2-2}\\
					\zihao{3}{专业班级}& \zihao{-3}{\hfutrp@tokens@stuclass}\\
					\cline{2-2}\\
					\zihao{3}{指导教师}& \zihao{-3}{\hfutrp@tokens@supervisor}\\
					\cline{2-2}
				\end{tabular}
			\end{large}
		\end{center}
		
		\vfill
		
		% Bottom of the page
		{\zihao{3} \textbf{\hfutrp@tokens@dateinput}}
		
	\end{center}
	\null
	\makeothertitle
}

%% 定义 任务书页
\def\makeothertitle{%
	\newpage
	\thispagestyle{empty}
	\begin{center}
		\zihao{-2}\textbf{合肥工业大学课程设计任务书} 
	\end{center}
	
	\begin{table}[!htbp]
		\centering
		\begin{tabular}{|c|p{26em}|c|p{3em}|}
			\hline
			\zihao{4}\textbf {\makecell[{{p{2em}}}]{设计题目}} &  \centering {\zihao{-4}\textbf{\@title}} & \zihao{4}\textbf{成绩} &  \\
			\hline
			\zihao{4}\textbf {\makecell[{{p{1em}}}]{\quad \\ \quad \\ \quad 课程设计主要内容 \quad \\ \quad \\ \quad}} & \multicolumn{3} {m{33em}|}
			{\zihao{-4} \qquad
				\hfutrp@tokens@maincontent
			} \\
			\hline
			\zihao{4}\textbf {\makecell[{{p{1em}}}]{  指导教师评语 }} & \multicolumn{3}{l|}
			{
				\begin{tabular}{@{}p{34em}@{}} 
					\textbf{
						\zihao{-5} 建议：从学生的工作态度、工作量、设计（论文）的创造性、学术性、实用性及书面表达能力等方面给出评价。}\\ \\ \\ \\ \\ 
					\raggedleft \zihao{4} \textbf{  签名：\quad\qquad\qquad\qquad\qquad 年\quad \quad 月\quad \quad 日 \qquad\qquad }  \\
				\end{tabular}
			} \\
			\hline
		\end{tabular}%
	\end{table}%
	\null
	\newpage
}


% 中文标题名称设置
\renewcommand\contentsname{\hfutrp@cap@contentsname}
\renewcommand\listfigurename{\hfutrp@cap@listfigurename}
\renewcommand\listtablename{\hfutrp@cap@listtablename}
\renewcommand\refname{\hfutrp@cap@refname}
\renewcommand\indexname{\hfutrp@cap@indexname}
\renewcommand\figurename{\hfutrp@cap@figurename}
\renewcommand\tablename{\hfutrp@cap@tablename}
\renewcommand\appendixname{\hfutrp@cap@appendixname}
\renewcommand\abstractname{\hfutrp@cap@abstractname}

% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\centering\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	{3.25ex \@plus1ex \@minus .2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define new environment and command
%% 摘要两个字设置为 4 号.
%% 定义摘要环境
\renewenvironment{abstract}{%
	\if@twocolumn
	\section*{\abstractname}%
	\else
	\begin{center}%
		{\zihao{4}\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
	\end{center}%
	\quotation
	\fi}
{\if@twocolumn\else\endquotation\newpage\null\fi}
\renewenvironment{quotation}
{\list{}{\listparindent 2em%
		\itemindent \listparindent
		\rightmargin\z@
		\leftmargin\z@
		\parsep \z@ \@plus\p@}%
	\item\relax}
{\endlist}

% 定义附录

% \renewcommand{\setthesection}{\appendixname\Alph{section}}
% \renewcommand\appendix{\par
% \setcounter{section}{0}%
% \setcounter{subsection}{0}%
% \gdef\thesection{\appendixname\@Alph\c@section}}
% 重定义参考文献环境
\renewenvironment{thebibliography}[1]
{\section*{\refname}%
	\@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
	\list{\@biblabel{\@arabic\c@enumiv}}%
	{\settowidth\labelwidth{\@biblabel{#1}}%
		\leftmargin\labelwidth
		\advance\leftmargin\labelsep
		\@openbib@code
		\usecounter{enumiv}%
		\let\p@enumiv\@empty
		\renewcommand\theenumiv{\@arabic\c@enumiv}}%
	\sloppy
	\clubpenalty4000
	\@clubpenalty \clubpenalty
	\widowpenalty4000%
	\sfcode`\.\@m}
{\def\@noitemerr
	{\@latex@warning{Empty `thebibliography' environment}}%
	\endlist}

\newcommand*\stunum[1]{%
	\renewcommand{\hfutrp@tokens@stunum}{#1}}
\newcommand*\stuname[1]{%
	\renewcommand{\hfutrp@tokens@stuname}{#1}}
\newcommand*\stuclass[1]{%
	\renewcommand{\hfutrp@tokens@stuclass}{#1}}
\newcommand*\supervisor[1]{%
	\renewcommand{\hfutrp@tokens@supervisor}{#1}}
\newcommand*\dateinput[1]{%
	\renewcommand{\hfutrp@tokens@dateinput}{#1}}
\newcommand*\maincontent[1]{%
	\renewcommand{\hfutrp@tokens@maincontent}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Initialization
%%%数学定理相关的常量
\newcommand*{\hfutrp@cap@definition}{定义}
\newcommand*{\hfutrp@cap@theorem}{定理}
\newcommand*{\hfutrp@cap@lemma}{引理}
\newcommand*{\hfutrp@cap@corollary}{推论}
\newcommand*{\hfutrp@cap@assumption}{假设}
\newcommand*{\hfutrp@cap@conjecture}{猜想}
\newcommand*{\hfutrp@cap@axiom}{公理}
\newcommand*{\hfutrp@cap@principle}{定律}
\newcommand*{\hfutrp@cap@problem}{问题}
\newcommand*{\hfutrp@cap@example}{例}
\newcommand*{\hfutrp@cap@proof}{证明}
\newcommand*{\hfutrp@cap@solution}{解}
%%%  中文标题名称
\newcommand*{\hfutrp@cap@contentsname}{目录}
\newcommand*{\hfutrp@cap@listfigurename}{插图清单}
\newcommand*{\hfutrp@cap@listtablename}{附表清单}
\newcommand*{\hfutrp@cap@refname}{参考文献}
\newcommand*{\hfutrp@cap@indexname}{索引}
\newcommand*{\hfutrp@cap@figurename}{图}
\newcommand*{\hfutrp@cap@tablename}{表}
\newcommand*{\hfutrp@cap@appendixname}{附录}
\newcommand*{\hfutrp@cap@abstractname}{摘要}
%%%  中文关键字
\newcommand*{\hfutrp@cap@keywordsname}{关键字}

%设置目录格式
% 节的目录格式
% \titlecontents{section}[0pt]{\vspace{2mm}\bfseries}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% % 小节的目录格式
% \titlecontents{subsection}[30pt]{\songti}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% \titlecontents{subsubsection}[55pt]{\songti}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}



% 上标文献
\newcommand{\upcite}[1]{$^{\mbox{\scriptsize \cite{#1}}}$}
\newcommand{\supercite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
\endinput
