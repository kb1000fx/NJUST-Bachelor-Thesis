
本项目是南京理工大学本科生毕业设计说明书的Latex模板。

感谢程杰、方青云两位学长之前的论文模板项目。


各部分修改方法可参照已生成的说明文档，如果有任何疑问，可以通过kb1000fx@gmail.com与我联系
## 运行环境
### XeLatex环境
TexLive 2018：https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/texlive2018.iso
### Latex编辑器
TexStudio：http://texstudio.sourceforge.net/

也可使用VS Code等文本编辑器修改，并直接使用xelatex命令编译文件。

## 论文生成流程：

+ 修改Cover.tex中关于封面的信息
+ 修改Abstract.tex中的中英文摘要及关键词
+ 根据文档和注释书写正文
+ 根据文档内教程使用Bibtex添加注释文件，并在正文内引用
+ 编译Cover.tex生成封面pdf文件
+ 编译Thesis.tex生成包含封面的文档

## 注意事项
### 关于查重
最近几年南理工本科毕业论文使用维普进行查重，在毕设系统或自行查重页面均可直接提交pdf文件。
使用旧版本的模板可能会出现编译后pdf文件显示正常，但查重系统无法解析的情况。如遇到此情况请更新模板，或是将封面与正文分别编译后再进行合并。

### 参考文献
参考文献的格式毕设系统里并没有明确提及，这里采用的是最新的国标GBT7714-2015里的参考文献格式。
- [GB/T 7714-2015 信息与文献 参考文献著录规则.pdf](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style/files/153951/GBT.7714-2015.pdf)
- [GB/T 7714-2005 文后参考文献著录规则.pdf](https://github.com/Haixing-Hu/typesetting-standard/raw/master/%E5%9B%BE%E4%B9%A6%E3%80%81%E6%9C%9F%E5%88%8A%E3%80%81%E8%AE%BA%E6%96%87%E7%9A%84%E7%BC%96%E6%8E%92/%E3%80%90GB:T%207714-2005%E3%80%91%E6%96%87%E5%90%8E%E5%8F%82%E8%80%83%E6%96%87%E7%8C%AE%E8%91%97%E5%BD%95%E8%A7%84%E5%88%99.pdf)
