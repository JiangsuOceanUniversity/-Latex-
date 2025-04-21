\NeedsTeXFormat{LaTeX2e}[2025/4/18]
\ProvidesClass{theme}[ Standard LaTeX Template for JOU]

%% Loading Package
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{theme}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi


%% Loading Class
\LoadClass[a4paper,12pt]{article}
% 页面布局  上下左右的页边距
\RequirePackage[a4paper, left=3.17cm, right=3.17cm, top=2.54cm, bottom=2.54cm]{geometry}



% 重定义字体符号
\newcommand{\song}{\songti}    % 宋体
\newcommand{\fs}{\fangsong}        % 仿宋体
\newcommand{\kai}{\kaishu}      % 楷体
\newcommand{\hei}{\heiti}      % 黑体
\newcommand{\li}{\lishu}        % 隶书
\newcommand{\yihao}{\fontsize{26pt}{26pt}\selectfont}       % 一号, 单倍行距
\newcommand{\xiaoyi}{\fontsize{24pt}{24pt}\selectfont}      % 小一, 单倍行距
\newcommand{\erhao}{\fontsize{22pt}{1.25\baselineskip}\selectfont}       % 二号, 1.25倍行距
\newcommand{\xiaoer}{\fontsize{18pt}{18pt}\selectfont}      % 小二, 单倍行距
\newcommand{\sanhao}{\fontsize{16pt}{16pt}\selectfont}      % 三号, 单倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{15pt}\selectfont}     % 小三, 单倍行距
\newcommand{\sihao}{\fontsize{14pt}{14pt}\selectfont}       % 四号, 单倍行距
\newcommand{\xiaosi}{\fontsize{12pt}{12pt}\selectfont}      % 小四, 单倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}   % 五号, 单倍行距
\newcommand{\xiaowu}{\fontsize{9pt}{9pt}\selectfont}        % 小五, 单倍行距


% 导包
% % 封面、摘要、版权、致谢格式定义
\usepackage{hong}
\RequirePackage{times}
% 支持中文的 ctex 宏包
\RequirePackage{ctex}
\RequirePackage{fontspec} % 用于更灵活地设置字体
\RequirePackage{setspace} % 用于设置行间距
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
% 超链接  目录/正文表格跳转.....
	 \hypersetup{%
%         xetex,
		% unicode=false, 
         pdfstartview=FitH,
         CJKbookmarks=true,
         bookmarksnumbered=true,
         bookmarksopen=true,
         colorlinks, 
         pdfborder=001,  
		 allcolors=black,
		 breaklinks=true}%


\renewcommand*{\baselinestretch}{1.38}



 
% 每行缩进两个汉字
\setlength\parindent{2em}
% % 设置字体
% \setmainfont{Times New Roman}
% %\setmonofont{Courier New}
% \setsansfont{Arial}
% \setCJKfamilyfont{kai}[AutoFakeBold]{simkai.ttf}
% \setCJKfamilyfont{song}[AutoFakeBold]{simsun.ttc}

% 设置公式上下间距
\renewcommand\normalsize{%
	\@setfontsize\normalsize{12.05}{14.45}%
	\abovedisplayskip 1\p@ 
        \belowdisplayskip 1\p@ 
	\abovedisplayshortskip 1\p@ 
	\belowdisplayshortskip 1\p@ }



% 浮动环境设置
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
% 关于图片 graphicx
 % 如果图片没有指定后缀, 依次按下列顺序搜索
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
 % 设置图表搜索路径, 可以给图表文件夹取如下名字
\graphicspath{{figures/}{figure/}{pictures/}%
  {picture/}{pic/}{pics/}{image/}{images/}}
  
% 设置图表标题的样式
\DeclareCaptionFont{song}{\song}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{
	format=hang,   
	labelsep=quad,
	font={song,minusfour,bf}, 
	position=bottom, 
        skip=1pt            
}
\captionsetup[table]{
	format=hang,  
	labelsep=quad, 
	font={song,minusfour,bf}, 
	position=top, 
        skip=1pt             
}

% 浮动对象(figure)与上下文之间的间距 (通常用于双栏文档)
\setlength{\textfloatsep}{0.1cm}   
 % 非浮动对象(tabuler 公式,文字)与上下文之间的间距 (适用于单栏文档)
\setlength{\intextsep}{0.1cm}     



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



%%%%%%%%%%   封面   %%%%%%%%%%
% 自定义新的长度变量
\newlength{\myTitleWidth}
\newcommand{\makecover}{
   % \phantomsection
   %  \pdfbookmark[-1]{\@ctitle}{ctitle}
  \begin{center}
  \begin{figure}[h]
  \includegraphics[width=0.9\textwidth]{figures/JOU.png}
  \end{figure}
  \song\erhao{本 \quad 科 \quad 毕 \quad 业 \quad 设 \quad 计}
  \vspace*{60pt}

  \vspace*{5pt}
  \hei\erhao{\textbf{\@ctitle}}\\
  \fontfamily{ptm}\selectfont\erhao\setlength{\baselineskip}{30pt}{\textbf{\@EnglishTitle}}
  \vspace*{16pt}
  
\vspace*{24pt}
\renewcommand\arraystretch{1.5}
\setlength{\myTitleWidth}{12cm}
{\sihao\song{
\begin{tabular}{ccll}
学\qquad 院: & \multicolumn{3}{c}{\underline{\makebox[\myTitleWidth][c]{\getcaffil}}} \\
专业班级: & \multicolumn{3}{c}{\underline{\makebox[\myTitleWidth][c]{\getcsubject}}} \\
学生姓名: & \underline{\makebox[0.4\myTitleWidth][c]{\getcauthor}} & 学号: & \underline{\makebox[0.4\myTitleWidth][c]{\getcnumber}} \\
指导教师: & \multicolumn{3}{c}{\underline{\makebox[\myTitleWidth][c]{\getcsupervisor}}}
\end{tabular}
  }
 }
\vspace*{21pt}

\hei\sanhao{\@cdate}
\end{center}
\thispagestyle{empty}
\newpage
}

%%%%%%%%%%   原创性声明和使用授权书   %%%%%%%%%%
\newcommand{\makesm}{
\begin{center}
    {\hei\xiaoer{江苏海洋大学} \\[0.5cm] \hei\xiaoer{\getpaperType 原创性声明}}
\end{center}


本人郑重声明：所呈交的\getpaperType，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。

\vspace{1cm}

\makebox[0.3cm]{} 作者签名： \makebox[4.5cm]{} 日期：\makebox[1cm]{}年\makebox[1cm]{}月\makebox[1cm]{}日

\vspace{2.5cm}

\begin{center}
   \hei\xiaoer{江苏海洋大学} \\[0.5cm] \hei\xiaoer{\getpaperType 版权使用授权书}
\end{center}



\getpaperType 作者同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权江苏海洋大学可以将本\getpaperType 的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本\getpaperType。


\vspace{4.5cm}

\makebox[0.1cm]{} 作者签名： \makebox[6.5cm]{} 指导教师签名：

\vspace{0.5cm}

\makebox[0.1cm]{}  日期：\makebox[1cm]{}年\makebox[1cm]{}月\makebox[1cm]{}日  \makebox[3.3cm]{}  日期：\makebox[1cm]{}年\makebox[1cm]{}月\makebox[1cm]{}日



\newpage
}


% 定义距离页面左右和上下的间距变量
\newlength{\leftMargin}
\setlength{\leftMargin}{3cm}
\newlength{\rightMargin}
\setlength{\rightMargin}{3cm}
\newlength{\topMargin}
\setlength{\topMargin}{3.5cm}
\newlength{\bottomMargin}
\setlength{\bottomMargin}{2cm}

%%%%%%%%%%   中文摘要   %%%%%%%%%%
\newcommand{\ChineseAbstract}{
\newpage
\begin{center}
   \fontfamily{ptm}\xiaoer{\textbf{\getpaperType 中文摘要}} 
\end{center}
% 临时在当前页背景添加竖线和横线形成闭合长方形
\AddToShipoutPictureBG*{%
    \begin{tikzpicture}[remember picture, overlay]
        % 左边的竖线
        \draw[line width=1pt] ([xshift=\leftMargin, yshift=\bottomMargin]current page.south west) -- ([xshift=\leftMargin, yshift=-\topMargin]current page.north west);
        % 右边的竖线
        \draw[line width=1pt] ([xshift=-\rightMargin, yshift=\bottomMargin]current page.south east) -- ([xshift=-\rightMargin, yshift=-\topMargin]current page.north east);
        % 底部的横线
        \draw[line width=1pt] ([xshift=\leftMargin, yshift=\bottomMargin]current page.south west) -- ([xshift=-\rightMargin, yshift=\bottomMargin]current page.south east);
        % 顶部的横线
        \draw[line width=1pt] ([xshift=\leftMargin, yshift=-\topMargin]current page.north west) -- ([xshift=-\rightMargin, yshift=-\topMargin]current page.north east);
    \end{tikzpicture}%
}

\vspace{0.5cm}
\begin{center}
   \hei\sihao{\getctitle } 
\end{center}

% \fontspec{SimSun}

}





%%%%%%%%%%   英文摘要   %%%%%%%%%%
\newcommand{\EnglishAbstract}{
\newpage
\begin{center}
   \fontfamily{ptm}\xiaoer{\textbf{\getpaperType 英文摘要}} 
\end{center}
% 临时在当前页背景添加竖线和横线形成闭合长方形
\AddToShipoutPictureBG*{%
    \begin{tikzpicture}[remember picture, overlay]
        % 左边的竖线
        \draw[line width=1pt] ([xshift=\leftMargin, yshift=\bottomMargin]current page.south west) -- ([xshift=\leftMargin, yshift=-\topMargin]current page.north west);
        % 右边的竖线
        \draw[line width=1pt] ([xshift=-\rightMargin, yshift=\bottomMargin]current page.south east) -- ([xshift=-\rightMargin, yshift=-\topMargin]current page.north east);
        % 底部的横线
        \draw[line width=1pt] ([xshift=\leftMargin, yshift=\bottomMargin]current page.south west) -- ([xshift=-\rightMargin, yshift=\bottomMargin]current page.south east);
        % 顶部的横线
        \draw[line width=1pt] ([xshift=\leftMargin, yshift=-\topMargin]current page.north west) -- ([xshift=-\rightMargin, yshift=-\topMargin]current page.north east);
    \end{tikzpicture}%
}



\fontspec{Times New Roman}
\vspace{0.5cm}
\begin{center}
   \sihao{\getEnglishTitle } 
\end{center}

% Abstract及Keywords部分的正文为小四号，不加粗，缩放、间距、位置标准，无左右缩进，无悬挂式缩进，段前、段后间距无，行间距为1.25倍多倍行距；
 % 设置正文格式
    % \setlength{\parindent}{0pt} % 取消段落缩进（无左右缩进和悬挂式缩进）
    \setstretch{1.25} % 设置 1.25 倍行距
    \noindent % 取消首行缩进
    % 以下开始写正文内容，这里只是示例，你需要替换为实际内容
    \xiaosi
    

}


  




%%%%%%%%%%   附表清单   %%%%%%%%%%
% 定义一个新命令 \makeFBQD 用于生成自定义的附表清单
\newcommand{\makeFBQD}{
    \begingroup
     % 重新定义 \l@table 以设置间距
    \makeatletter
    \setlength{\cftbeforetabskip}{0.5em} % 设置表格条目间的垂直间距
    \makeatother
    \renewcommand{\listtablename}{附表清单:} % 修改标题文本
    \let\oldnumberline\numberline % 保存原有的 \numberline 命令
    \renewcommand{\numberline}[1]{\hspace{-0.5cm}表##1\quad } % 修改编号显示格式，添加“表”字
    \listoftables % 生成附表清单
    \let\numberline\oldnumberline % 恢复原有的 \numberline 命令
    \endgroup
}





% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
  % 在编号后添加 0.5em 的水平空间
\def\@seccntformat#1{\csname the#1\endcsname\hspace{0.5em}}

% 标题前添加数字
% \renewcommand\thesection{\chinese{section}、}
\renewcommand\thesection{\arabic{section} }
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}

% 一级标题 黑体小三
\renewcommand\section{\@startsection{section}{1}{\z@}%
    {2ex \@plus -1ex \@minus -.2ex}%
    {1ex \@plus.2ex}%
    {\hei\xiaosan }% 左对齐，设置为黑体、小三号字体
}
 % 二级标题 黑体四号 减少了二级标题与前面后面内容的间距
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{0ex\@plus -1ex \@minus -.2ex}%
	{0.1ex \@plus .2ex}%
	{\hei\sihao}}
    
% 三级标题 黑体小四 
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{0ex\@plus -1ex \@minus -.2ex}%
	{0.1ex \@plus .2ex}%
	{\hei\xiaosi}}

% 重新定义 \paragraph
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
    {0.1ex \@plus1ex \@minus.2ex}%
    {-1em}%
    {\song\xiaosi\bfseries\quad}%
}


\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	 {3.25ex \@plus1ex \@minus .2ex}%
	 {-1em}%
	 {\song\xiaosi\bfseries}}
     
% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
  % 在编号后添加 0.5em 的水平空间
\def\@seccntformat#1{\csname the#1\endcsname\hspace{0.5em}}

% \renewcommand\thesection{\chinese{section}、}
\renewcommand\thesection{\arabic{section} }
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}


  
 



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








%%%%%%%%%%   目录格式   %%%%%%%%%%
\renewcommand{\contentsname}{目\quad 录} % 设置目录标题名称
% \makeatletter
\renewcommand{\tableofcontents}{
    \section*{\centering\normalfont\contentsname} % 使目录标题居中且不加粗
    \@starttoc{toc}%
    \setstretch{1.25} % 行间距为 1.25 倍多倍行距 似乎不生效
}

% \makeatother

% 节的目录格式
% \titlecontents{section}[0pt]{\vspace{2mm}\bfseries}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% % 小节的目录格式
% \titlecontents{subsection}[30pt]{\songti}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% \titlecontents{subsubsection}[55pt]{\songti}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}


% 交叉引用格式
\crefformat{figure}{#2图~#1#3}
\crefrangeformat{figure}{图~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{figure}{图~(#2#1#3)}{和~(#2#1#3)}{，(#2#1#3)}{和~(#2#1#3)}

\crefformat{table}{#2表#1#3}
\crefrangeformat{table}{表(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{table}{表~(#2#1#3)}{和~(#2#1#3)}{，(#2#1#3)}{和~(#2#1#3)}

\crefformat{equation}{#2~(#1#3)}
\crefrangeformat{equation}{~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{equation}{~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}






% 上标文献
\newcommand{\upcite}[1]{$^{\mbox{\scriptsize \cite{#1}}}$}
\newcommand{\supercite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
\endinput


