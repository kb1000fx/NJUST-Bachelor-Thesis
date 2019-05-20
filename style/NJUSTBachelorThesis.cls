%%========================================================================
%		author:Liu Changhai
%		E-mail:kb1000fx@gmail.com
%%=======================================================================
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{style/NJUSTBachelorThesis}
  [2015/03/15 v2.x njustThesis
   document class]
%%%%% ------------------------------------------------------------------------------------------
%%%%*************************** loadclass infomation ************************************
%%
\LoadClass[UTF8,cs4size,a4paper,fancyhdr,twoside]{ctexbook}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%***************************** package infomation ***********************************
%%
%\RequirePackage {style/bibspacing}
\RequirePackage {ctex}
\RequirePackage [top=20mm, bottom=30mm, left=20mm, right=20mm]{geometry}
\RequirePackage {titlesec, fancyhdr, fancybox, setspace, titletoc}
\RequirePackage [super,square,sort & compress]{natbib}
\RequirePackage [titletoc]{appendix}
\RequirePackage {url}
\RequirePackage	{enumerate}
%% table package
\RequirePackage {tabu,booktabs,tabularx,multirow,array,multicol,longtable}
\RequirePackage [figuresright]{rotating}
\RequirePackage {colortbl, makecell}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,mathptmx}
%% graphics packages
\RequirePackage{graphicx, subfigure, caption}
%% code package
\RequirePackage {listings, float}
%% 
%%%%% ------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------
%		重新制定字体大小命令，以便后面方便使用
%------------------------------------------------------------------------------------------------

%	参考CTeX宏包说明文档中对字体大小的规定，也可以使用诸如\zihao{3}\zihao{-3}之类的命名

\newcommand{\chuhao}{\fontsize{42bp}{\baselineskip}\selectfont}
\newcommand{\xiaochu}{\fontsize{36bp}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{26bp}{\baselineskip}\selectfont}
\newcommand{\xiaoyi}{\fontsize{24bp}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{22bp}{\baselineskip}\selectfont}
\newcommand{\xiaoer}{\fontsize{18bp}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{16bp}{\baselineskip}\selectfont}
\newcommand{\xiaosan}{\fontsize{15bp}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14bp}{\baselineskip}\selectfont}
\newcommand{\xiaosi}{\fontsize{12bp}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5bp}{\baselineskip}\selectfont}
\newcommand{\xiaowu}{\fontsize{9bp}{\baselineskip}\selectfont}


% CTeX 字体使用说明

%   \songti           宋体命令
%   \heiti              黑体命令
%   \fangsong      仿宋命令
%   \kaishu           楷书命令
%   \lishu             隶书命令
%   \youyuan       幼圆命令
%   \yahei            雅黑命令

%   XeTeX 字体使用说明


%	默认字体
\setmainfont{Times New Roman}
\setCJKmainfont{SimSun}


%-=======================================================================================================================
\setCJKfamilyfont{SCB}[AutoFakeBold = {2.17}]{SimSun}             
\newcommand{\songtibold}{\CJKfamily{SCB}}               % 设置宋体加粗
\renewcommand{\songti}{\CJKfamily{SCB}}

\setCJKfamilyfont{STB}[AutoFakeBold = {2.17}]{KaiTi}             
%\newcommand{\kaishubold}{\CJKfamily{STB}}               % 设置宋体加粗
\renewcommand{\kaishu}{\CJKfamily{STB}}
%===============================================================================================================

% 中文断行
\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

%------------------------------------------------------------------------------------------------
%		重新制定章节标题样式，包括样式和标题与上下文的间距
%------------------------------------------------------------------------------------------------

\CTEXsetup[number={\arabic{chapter}}]{chapter}
\CTEXsetup[name={,}]{chapter}
\CTEXsetup[nameformat={\heiti\xiaosan\raggedright}]{chapter}   %	Chapter章节标号格式
\CTEXsetup[titleformat={\heiti\xiaosan\raggedright}]{chapter}      %	Chapter章节标题格式
\CTEXsetup[beforeskip={-8ex}]{chapter}                          
\CTEXsetup[afterskip={1ex}]{chapter}
%\titleformat{\chapter}{\bf\heiti\xiaosan\raggedright}{\bf\heiti\arabic{chapter}}{1em}{}[]


\CTEXsetup[format={\heiti\zihao{4}\bfseries}]{section}
\CTEXsetup[format={\heiti\zihao{-4}\bfseries}]{subsection}
\CTEXsetup[format={\heiti\zihao{-4}\bfseries}]{subsubsection}

\titlespacing{\chapter}{0em}{-3ex}{1ex}
\titlespacing{\section}{0em}{0ex}{0ex}
\titlespacing{\subsection}{0em}{0ex}{0ex}
\titlespacing{\subsubsection}{0em}{0ex}{0ex}



%------------------------------------------------------------------------------------------------
%		制定页眉页脚样式、页眉高度以及页眉与正文的距离
%------------------------------------------------------------------------------------------------

%	制定页眉高度和页眉与正文的距离
\setlength{\headheight}{1.4cm}
\setlength{\headsep}{8pt}

%	制定页眉页脚样式
\fancypagestyle{plain}{
	\pagestyle{fancy}      
}

\pagestyle{fancy}
\fancyhead[C]{
	\zihao{-2}{\songtibold 本\hspace{0.5mm}科\hspace{0.5mm}毕\hspace{0.5mm}业\hspace{0.5mm}设\hspace{0.5mm}计\hspace{0.5mm}说\hspace{0.5mm}明
		\hspace{0.5mm}书} }}
\fancyhead[LE,RO]{第~\thepage ~页}
\fancyhead[RE,LO]{}
\cfoot{}

\renewcommand{\headrulewidth}{0.7pt}

\makeatletter
\newcommand{\openany}{\@openrightfalse}
\newcommand{\openright}{\@openrighttrue}
\makeatother



%------------------------------------------------------------------------------------------------
%		目录格式设置
%------------------------------------------------------------------------------------------------

\renewcommand{\contentsname}{ \hspace*{\fill} 目\hspace{1.5em} 次\hspace*{\fill}}

\titlecontents{chapter}[0em]{\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[0em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{subsection}[0em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}

%\setcounter{tocdepth}{2}

%------------------------------------------------------------------------------------------------
%		参考文献标题设置
%------------------------------------------------------------------------------------------------



\renewcommand\bibname{参\hspace{0.5em}考\hspace{0.5em}文\hspace{0.5em}献}
%\RequirePackage[square,comma,super,sort&compress]{natbib}% superscripted numeric cite mode
%\bibliographystyle{apalike}% APA citation style
%\bibliographystyle{unsrtnat}% sort as referenced
%\bibliographystyle{plainnat}% sort by author name
%\bibliographystyle{GBT7714-2005NLang}% sort as CHN standard 3-type 
%\bibliographystyle{GBT7714-2005NLang_UP}
\setlength{\bibsep}{0ex}


%------------------------------------------------------------------------------------------------
%		附录标题设置
%------------------------------------------------------------------------------------------------

\CTEXsetup[name={附录},number={\Alph{chapter}}]{appendix}



%------------------------------------------------------------------------------------------------
%		图片标题设置
%------------------------------------------------------------------------------------------------

\captionsetup[table]{name={表},labelsep=quad}
\captionsetup[figure]{name={图},labelsep=quad}

\DeclareCaptionFont{captionfont}{\heiti\fontsize{10.5bp}{13.65bp}\selectfont}
\captionsetup{font=captionfont}

\newcommand{\topcaption}{%
	\setlength{\abovecaptionskip}{0ex}%
	\setlength{\belowcaptionskip}{1.5ex}%
	\caption}   % 表格上标题修改


\setlength{\intextsep}{0pt}
\setlength{\textfloatsep} {0pt}



%------------------------------------------------------------------------------------------------
%		目录代码自动换行
%------------------------------------------------------------------------------------------------

\lstset{breaklines}    %自动将长的代码行换行排版
\lstset{extendedchars=false}

%% 封面
%--------------------------------------------------
%%%%%封面变量
%\newcommand\Lauthor[1]{\def\NJUST@author{#1}}
%--------------------------------------------
\newcommand{\NJUSTCover}{
\begin{titlepage}
\begin{center}
 	\quad\par
 	\vspace{10mm}
 	\begin{figure}[H]
 		\centering
 		\includegraphics[width=75mm]{figure//Njust}\\
 	\end{figure}
 	\vspace{10mm}
 	%{\zihao{0}\heiti{毕业设计说明书 }}
 	{\fontsize{45pt}{\baselineskip}\heiti{毕业设计说明书 }}

 	\vspace{26.5mm}
 	\setlength{\extrarowheight}{7.5mm}
 	\begin{tabular}{rp{8.5\ccwd}<{\centering}cp{8.\ccwd}<{\centering}}
			\zihao{3}\songtibold\textbf{\makebox[3\ccwd][s]{作\quad 者}~:}& \zihao{3}\kaishu{\varAuthor} & \zihao{3}\songtibold\textbf{\makebox[2.5\ccwd][s]{学\hspace{0.5em} 号}~ :}&\zihao{3}\kaishu{\varStudentNum} \\
			\Xcline{2-2}{0.8pt}\Xcline{4-4}{0.8pt}
			\zihao{3}\songtibold\textbf{\makebox[3\ccwd][s]{学\quad 院}~:}&
			\multicolumn{3}{c}{\zihao{3}\kaishu{\varSchool}} \\
			\Xcline{2-4}{0.8pt}
			\zihao{3}\songtibold\textbf{\makebox[3\ccwd][s]{专\quad 业}~:}& \multicolumn{3}{c}{\zihao{3}\kaishu{\varMajor}}\\
			\Xcline{2-4}{0.8pt}
			\zihao{3}\songtibold\textbf{\makebox[3\ccwd][s]{题\quad 目}~:}& \multicolumn{3}{c}{\zihao{3}\kaishu{\varTitleUp}}\\
			\Xcline{2-4}{0.8pt}
			& \multicolumn{3}{c}{\zihao{3}\kaishu{\varTitleDown}}\\
			\Xcline{2-4}{0.8pt}
		\end{tabular}
 	
 	\vspace{20mm}
 	%\setlength{\extrarowheight}{0mm}
 	
	\begin{tabular}{rp{10\ccwd}<{\centering}p{10\ccwd}<{\centering}}
			\zihao{3}\songtibold\textbf{\makebox[3\ccwd][s]{指导者}:}&\kaishu\sanhao\textbf{\varAdvisor} & \kaishu\sanhao\textbf{\varAdvisorTitle}\\
			\Xcline{2-3}{0.8pt} 

			\rule{0pt}{8mm}& \kaishu\zihao{3}\textbf{\varCoadvisor} & \kaishu\sanhao\textbf{\varCoadvisorTitle}\\
			\Xcline{2-3}{0.8pt}
			
			\zihao{3}\songtibold\textbf{\makebox[3\ccwd][s]{评阅者}:}& \kaishu\zihao{3}\textbf{\varJudge} & \kaishu\sanhao\textbf{\varJudgeTitle}\\
			\Xcline{2-3}{0.8pt}
		\end{tabular}
 	
 	\vspace{15mm}
 	\xiaoer\heiti{\varYear\quad 年\quad5\quad 月}
\end{center}
\end{titlepage}
}
%=============================================================================================================================================
%%声明
\newcommand{\NJUSTStatement}{
 \thispagestyle{empty}
 \quad\vspace{12mm}
 \begin{center}
{\heiti\sanhao{声\hspace{1.5em}明}}
 \end{center}

\vspace{3ex}

{
\begin{spacing}{1.5}
\songti\zihao{4}{
我声明，本毕业设计说明书及其研究工作和所取得的成果是本人在导师的指导下独立完成的。研究过程中利用的所有资料均已在参考文献中列出，其他人员或机构对本毕业设计工作做出的贡献也已在致谢部分说明。

本毕业设计说明书不涉及任何秘密，南京理工大学有权保存其电子和纸质文档，可以借阅或网上公布其部分或全部内容，可以向有关部门或机构送交并授权保存、借阅或网上公布其部分或全部内容。}

\end{spacing}}

\vspace{6ex}

\begin{flushright}
\setlength{\extrarowheight}{6mm}
\begin{tabular}{lcp{3\ccwd}}
  \sihao\songti\makebox[6\ccwd][s]{学生签名：} & &\\
   & \sihao\songti\qquad 年 \qquad 月 \qquad 日 & \\
\end{tabular}

\vspace{10mm}
\begin{tabular}{lcp{3\ccwd}}
  \sihao\songti\makebox[6\ccwd][s]{指导教师签名：} & &  \\
   & \sihao\songti\qquad 年 \qquad 月 \qquad 日 & \\
\end{tabular}
\end{flushright}
\newpage
}
%===========================================================================================================================================
%%摘要

\newcommand{\NJUSTAbsHead}[1][]{

\fancyhead[CH]{\heiti\zihao{3}{毕\hspace{6mm}业\hspace{6mm}论\hspace{6mm}文\hspace{6mm}#1\hspace{6mm}文\hspace{6mm}摘\hspace{5mm}要 }}
\fancyhead[LE,RO]{}
\fancyhead[RE,LO]{}
\cfoot{}
\thisfancypage{%	
	\setlength{\fboxsep}{0pt}%
	\setlength{\fboxrule}{0.8pt}%
	\setlength{\shadowsize}{0pt}%
	\shadowbox}{}		
}

\newcommand{\NJUSTENAbsTitle}[2]{
\begin{tabular}{p{3cm}p{11cm}<{\centering}}
    		%{\bf \fontspec{SimHei}{\zihao{3}T\hspace{1mm}i\hspace{1mm}t\hspace{1mm}l\hspace{1mm}e}} & {\zihao{4}#1}\\
		{\bf \fontspec{SimHei}{\zihao{3}Title}} & {\zihao{4}#1}\\
    		\Xcline{2-2}{0.8pt}
    	   & {\zihao{4}#2}\\
    		\Xcline{2-2}{0.8pt}
    	\end{tabular}\\[1cm]
\textbf{\fontspec{SimHei}{\zihao{3}{Abstract}}}
}

\newenvironment{NJUSTAbstractZH}{\NJUSTAbsHead[中]\zihao{-4}\songti\begin{spacing}{1.5}\begin{center}\begin{minipage}[b]{0.95\linewidth}\quad \\ [0.5ex]}
{\end{minipage}\end{center}\end{spacing}}

\newenvironment{NJUSTAbstractEN}{\NJUSTAbsHead[外]\zihao{-4}\songti\begin{spacing}{1.5}\begin{center}\begin{minipage}[b]{0.95\linewidth}\setlength{\extrarowheight}{7.5mm}}
{\end{minipage}\end{center}\end{spacing}}

\newcommand{\NJUSTKeyWordsZH}[5]{{\heiti{关键词}} \quad #1 \quad #2 \qquad #3 \quad #4 \quad #5}
\newcommand{\NJUSTKeyWordsEN}[5]{{\fontspec{SimHei}{Keywords}} {\fontspec{SimSun}{\quad #1 \quad #2 \quad #3 \quad #4 \quad #5}} }
%=====================================================================================================================================================================
%%目录
\newcommand{\NJUSTcontent}{
\setcounter{tocdepth}{2}

\newpage
\openright
\fancypagestyle{plain}{
	\pagestyle{fancy}      
}

\pagestyle{fancy}
\fancyhead[C]{
	\songti\zihao{-2}{\songtibold
		本\hspace{0.5mm}科\hspace{0.5mm}毕\hspace{0.5mm}业\hspace{0.5mm}设\hspace{0.5mm}计\hspace{0.5mm}说\hspace{0.5mm}明\hspace{0.5mm}书}}
\fancyhead[LE,RO]{第~\thepage ~页}
\fancyhead[RE,LO]{}
\cfoot{}
{\setlength{\baselineskip}{18bp}
	\pagenumbering{Roman}   % 将目录页码转换为罗马数字
	\setcounter{page}{1}      % 设置当前页为目录页第一页
	% 在ctexbook里面把‘目次’当做chapter来处理，因此这里需要对chapter进行章节调整
	\CTEXsetup[nameformat={ \bfseries\heiti \zihao{1}\raggedright}]{chapter}% 章标题格式
	\CTEXsetup[titleformat={ \bfseries\heiti \zihao{-3}\raggedright}]{chapter}% 章标题格式
	\CTEXsetup[beforeskip={8ex}]{chapter}
	\CTEXsetup[afterskip={6ex}]{chapter}
	
	\setcounter{tocdepth}{1}
	
	\tableofcontents    
}             %生成目录

\newpage
{\color{white}{1}}
%
\openany
\setlength{\extrarowheight}{2mm}

}




















