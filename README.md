# 合肥工业大学课程设计 LaTeX 模板
本项目是合肥工业大学课程设计 LaTeX 模板 HFUT_Course_Report_Template，按照我校课程设计封面以及常规报告的要求编写，兼容最新版的 TeX Live、MacTeX 、MiKTeX 发行版，支持跨平台使用。

注意：

- thesis.pdf **使用模板前应仔细阅读**。

## 编译文档

- 编译论文 `thesis.pdf`：
   ```
   latexmk -xelatex thesis.tex
   ```
- 如需清理论文编译过程中的临时文件，可以：
   ```
   latexmk -c
   ```
## 下载地址

- GitHub Releases：https://github.com/LaureatePoet/HFUT_Course_Report_Template/releases

## 反馈问题

如果发现模板有问题，请按照以下步骤操作：

1. 阅读学校的标准，判断是否符合学校的要求；
2. 阅读 [常见问题 FAQ](https://github.com/laureatepoet/HFUT_Course_Report_Template/wiki/常见问题)；
3. 将 TeX 发行版和宏包升级到最新，并且将模板升级到 Github 上最新版本，
查看问题是否已经修复；
4. 在 [GitHub Issues](https://github.com/HFUT_Course_Report_Template/issues)
中搜索该问题的关键词；
5. 在 [GitHub Issues](https://github.com/HFUT_Course_Report_Template/issues)
中提出新 issue，并回答以下问题：
    - 使用了什么版本的 TeX Live / MacTeX / MiKTeX ？
    - 具体的问题是什么？
    - 正确的结果应该是什么样的？
    - 是否应该附上相关源码或者截图？

## 更多资料

- [一份简短的关于 LaTeX 安装的介绍](https://github.com/OsbertWang/install-latex)
- [一份不太简短的 LaTeXe 介绍【中文资料】](http://mirrors.ctan.org/info/lshort/chinese/lshort-zh-cn.pdf)
- [常见问题 FAQ](https://github.com/LaureatePoet/HFUT_Course_Report_Template/wiki/常见问题)
- [参与开发](https://github.com/LaureatePoet/HFUT_Course_Report_Template/wiki/参与开发)

## 写在后面

- 作者能力有限，此模板还有诸多改进之处，希望有能力的同学能够进行修改并参与开发
- LaTeX 有诸多优势，希望对它感兴趣的同学能够尽快建立一个组织或者团体开发我校 LaTeX 相关模板，使之规范化，个人的力量总是有限的，Happy LaTeXing！