---
weight: 02
title: Special Letters
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-19"
lastmod: "2023-11-19"
series:
toc: true
---


<!--more-->
---

Special letters can be expressed in two forms, hexadecimal and decimal.

Hexadecimal form begins with `\u`, decimal form begins with `&`.

Use `\u` in data frame and rmarkdown code chunk.

Use `&` in HTML.


# Micro sign

Use `&#181;`, `&#956;` or `&mu;` or `μ` in HTML

Use `\u03BC`g/L in c() and add it to colname().

mu applied in table generated in {r}  

in ggplot2 title and legends

```
labs(title = "Chloroform in Field Blanks",
       subtitle = "2019 -2023",
       y = bquote(conc~(mu*g/L)))
```


# Temperture

`\u2070`C [in rmarkdown code chunk]

Use `\u03BC`g/L in c() and add it to colname().

# alpha

in html: `$\alpha$` <br> in LaTex: `{\alpha}`


# forward slash
`/`
Reference: https://ww.w3schools.com/html/html_symbols.asp


# hyphen
`&dash;`

# arrow in chemical equation in LaTex
`{\rightarrow}`


# Registered symbol 
`&reg;`


# Trademark symbol 
`&trade;`


# letter with accent

E: `&#234;`


# Links
<a href = "https://www.w3schools.com/charsets/ref_utf_latin1_supplement.asp" target="_blank" rel="noopener noreferrer">w3schools | UTF-8 Latin1 Supplement </a>

<a href = "https://www.stevesque.com/symbols/" target="_blank" rel="noopener noreferrer">Symbols in LaTeX and HTML</a>  

<a href = "https://w2.syronex.com/jmr/tex/latex-symbols" target="_blank" rel="noopener noreferrer">LaTeX Math Symbols and Corresponding HTML Entities</a>

