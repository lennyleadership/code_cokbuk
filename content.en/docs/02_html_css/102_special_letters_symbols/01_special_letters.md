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


HTML codes and HTML special characters: The complete list

<a href = "https://psdtowp.net/html-codes-special-characters.html" target="_blank" rel="noopener noreferrer">https://psdtowp.net/html-codes-special-characters.html</a>


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

in html: `$\alpha$` 


# forward slash
`/`
Reference: https://ww.w3schools.com/html/html_symbols.asp


# hyphen
`&dash;`

# Registered symbol 
`&reg;`

# asterisk sign
`&ast;`

<table >
<caption style="text-align:left", align = "top"><b></b></caption>
<colgroup><col style="width: 40%" /><col style="width: 60%" />
</colgroup>
  <tr>
    <th><p>Denotation
      </p></th>
    <th><p>Expression
      </p></th>
  </tr>
  <tr>
    <td><p>hyphen
      </p></td>
    <td><span>`&dash;`</span>
      </td>
  </tr>
  <tr>
    <td><p>Registered symbol 
      </p></td>
    <td><span>&reg;</span>
      </td>
  </tr>
  <tr>
    <td><p>asterisk sign
      </p></td>
    <td>`&ast;`
      </td>
  </tr>
  <tr>
    <td><p>
      </p></td>
    <td><p>
      </p></td>
  </tr>
  <tr>
    <td><p>
      </p></td>
    <td><p>
      </p></td>
  </tr>
</table>

# 



# Trademark symbol 
`&trade;`

Trade mark in ggplot2
`labs(x = "", y = paste0("SENTRY", "\U2122"," Signal (Consumable BOD) ") )`


# Temperature
`&deg;`


# letter with accent

E: `&#234;`

# Plus minus symbol in html
\u00B1 (works in tibble)


# Links
<a href = "https://www.w3schools.com/charsets/ref_utf_latin1_supplement.asp" target="_blank" rel="noopener noreferrer">w3schools | UTF-8 Latin1 Supplement </a>

<a href = "https://www.stevesque.com/symbols/" target="_blank" rel="noopener noreferrer">Symbols in LaTeX and HTML</a>  

<a href = "https://w2.syronex.com/jmr/tex/latex-symbols" target="_blank" rel="noopener noreferrer">LaTeX Math Symbols and Corresponding HTML Entities</a>

