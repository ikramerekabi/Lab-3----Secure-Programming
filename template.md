---
title: The title
subtitle: The subtitle
author: Camille Monière
date: 22 November 2024
geometry: top=1.5cm,left=2cm,right=2cm,bottom=2cm
license: CC0 1.0
numbersections: true
highlightstyle: pygments
header-includes:
    - \usepackage{package_deps/comment}
    - \usepackage{multicol}
    - \usepackage{lmodern}
    - \newcommand{\hideFromPandoc}[1]{#1}
    - \hideFromPandoc{
        \let\Begin\begin
        \let\End\end
      }
colorlinks: true
lang: en-GB
---

<!-- Remplacer 'en-GB' par 'fr' pour un document en français -->

<!-- 
	Markdown is a minimalistic HTML-based language
	
	The restricted set of functionalities is BY DESIGN,
	It is useful in any course context to restrict report formatting.
	You SHALL NOT try to circumvent how it works. You must CONFORM to the format. 
	Any text editor will work, since Markdown is just plain text.
	
	Visual Studio Code has nice basic support and previewing capabilities,
	and support several extensions that enhance the writing experience.
	You are stroongly advised to use them.

	The template is commented to guide you through the format,
	but you should *read* the comments to understand.

	Note that line breaks do not exist. You cannot skip a line, 
-->

<!-- Sections are denoted with a "#" at the very beginning of the line. Do not number the sections! Pandoc will handle that part -->
# First part or Title

My first part or my introduction

<!-- Each new "#" denote a lower section level, "##": subsection; "###": subsubsection; and so on. -->
## First section

The first section

<!-- You should skip a line before and after a bullet point. You can use whatever symbole you want, "-", "*" ... -->
Bullet point list:

- Item 0
- Item 1
- Item 2

<!-- Nesting lists depend on tabulation. Number are not important, only the first one determine where the list begin. However, it is good practice to use the actual numbewr -->
Numbered and nested list:

- from 0:

    0. Item 0
    1. Item 1
    2. Item 2

- from 1 (remarkable how the numbers are in fact ignored):

    1. Item 0
    1. Item 1
    2. Item 2

## Second section

### Code blocks

<!-- Never use screenshots, use code blocks ! They are more legible, syntaxically colored, and more portable. Again, skip lines before and after a block. -->
Let's show some C++ code:

```C++
class A {
private:
    int _a;
public:
    int a() const {return a;}
}
```

Or some python:

```python
class A:
    def __init__(self):
        self.__a = int(0)
    
    def a(self):
        return self.__a
```

Or even, let's inline some C code: `int inlined_C_code() {}`{.C}.
<!--  Warning: the inline code language specification (the `{.C}`) is a Pandoc extension. -->

### Links

<!-- if you don't know what an URL is, lookup "uniform resource locator (URL)" on Wikipedia -->
Markdown is like slimmer HTML, so [URL works](https://www.markdownguide.org/basic-syntax/).

### Images

Markdown use links, so you can link local files, but also print images like so (again, width specification is a Pandoc extension):

<!-- The link here is a relative path, so the file must exists somewhere --> 
![The research centre Christian Huygens](figures/cr_huygens.jpg){ width=60% }

<!-- You can safely delete the whole part up to the endi. It is just to demonstrate that Markdown can be used for HTML as well. --> 
```{=latex}
\begin{comment}
t makes no sense to reade the web in a PDF or in \LaTeX, thus the follwing is impossible.
Let's ignored that:

\begin{verbatim}
```

But it can also be on the web:

![UFR SSI as seen on the "univ-ubs.fr" website](https://www-facultesciences.univ-ubs.fr/_richText-file/ametys-internal%253Asites/ssi/ametys-internal%253Acontents/presentation-article/_attribute/content/_data/Photos%20ssi%20Va%20et%20Lo%202_215x251.jpg){external=1}

```{=latex}
\end{verbatim}
\end{comment}
```

