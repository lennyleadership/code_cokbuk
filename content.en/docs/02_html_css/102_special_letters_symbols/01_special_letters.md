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
    <th><p>Entity Name
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
    <td><span>&amp;reg;</span></td>
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



#




<table>
  <thead>
    <tr>
      <th style="width: 175px">
        <h4><span>Notation</span></h4>
      </th>
      <th style="width: 175px">
        <h4><span>Symbols</span></h4>
      </th>
      <th style="width: 175px">
        <h4><span>Entity name</span></h4>
      </th>
      <th style="width: 175px">
        <h4><span>Entity Number</span></h4>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="width: 175px"><span>&nbsp;</span></td>
      <td style="width: 175px"><span>non-breaking space</span></td>
      <td style="width: 175px"><span>&amp;nbsp;</span></td>
      <td style="width: 175px"><span>&nbsp;</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>&lt;</span></td>
      <td style="width: 175px"><span>less than</span></td>
      <td style="width: 175px"><span>&amp;lt;</span></td>
      <td style="width: 175px"><span>&lt;</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>®</span></td>
      <td style="width: 175px"><span>registered trademark</span></td>
      <td style="width: 175px"><span>&amp;reg;</span></td>
      <td style="width: 175px"><span>®</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>©</span></td>
      <td style="width: 175px"><span>copyright</span></td>
      <td style="width: 175px"><span>&amp;copy;</span></td>
      <td style="width: 175px"><span>©</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>€</span></td>
      <td style="width: 175px"><span>euro</span></td>
      <td style="width: 175px"><span>&amp;euro;</span></td>
      <td style="width: 175px"><span>€</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>¥</span></td>
      <td style="width: 175px"><span>yen</span></td>
      <td style="width: 175px"><span>&amp;yen;</span></td>
      <td style="width: 175px"><span>¥</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>£</span></td>
      <td style="width: 175px"><span>pound</span></td>
      <td style="width: 175px"><span>&amp;pound;</span></td>
      <td style="width: 175px"><span>£</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>¢</span></td>
      <td style="width: 175px"><span>cent</span></td>
      <td style="width: 175px"><span>&amp;cent;</span></td>
      <td style="width: 175px"><span>¢</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>“</span></td>
      <td style="width: 175px"><span>double quotation mark</span></td>
      <td style="width: 175px"><span>&amp;quot;</span></td>
      <td style="width: 175px"><span>“</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>&amp;</span></td>
      <td style="width: 175px"><span>ampersand</span></td>
      <td style="width: 175px"><span>&amp;amp;</span></td>
      <td style="width: 175px"><span>&amp;</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>&gt;</span></td>
      <td style="width: 175px"><span>greater than</span></td>
      <td style="width: 175px"><span>&amp;gt;</span></td>
      <td style="width: 175px"><span>&gt;</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∂</span></td>
      <td style="width: 175px"><span>PARTIAL DIFFERENTIAL</span></td>
      <td style="width: 175px"><span>&amp;part;</span></td>
      <td style="width: 175px"><span>∂</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∃</span></td>
      <td style="width: 175px"><span>THERE EXISTS</span></td>
      <td style="width: 175px"><span>&amp;exist;</span></td>
      <td style="width: 175px"><span>∃</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∅</span></td>
      <td style="width: 175px"><span>EMPTY SETS</span></td>
      <td style="width: 175px"><span>&amp;empty;</span></td>
      <td style="width: 175px"><span>∅</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∇</span></td>
      <td style="width: 175px"><span>NABLA</span></td>
      <td style="width: 175px"><span>&amp;nabla;</span></td>
      <td style="width: 175px"><span>∇</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∈</span></td>
      <td style="width: 175px"><span>ELEMENT OF</span></td>
      <td style="width: 175px"><span>&amp;isin;</span></td>
      <td style="width: 175px"><span>∈</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∉</span></td>
      <td style="width: 175px"><span>NOT AN ELEMENT OF</span></td>
      <td style="width: 175px"><span>&amp;notin;</span></td>
      <td style="width: 175px"><span>∉</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>+</span></td>
      <td style="width: 175px"><span>PLUS SIGN</span></td>
      <td style="width: 175px"><span>&amp;plus;</span></td>
      <td style="width: 175px"><span>+</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∏</span></td>
      <td style="width: 175px"><span>N-ARY PRODUCT</span></td>
      <td style="width: 175px"><span>&amp;prod;</span></td>
      <td style="width: 175px"><span>∏</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∑</span></td>
      <td style="width: 175px"><span>N-ARY SUMMATION</span></td>
      <td style="width: 175px"><span>&amp;sum;</span></td>
      <td style="width: 175px"><span>∑</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>Α</span></td>
      <td style="width: 175px"><span>Alpha</span></td>
      <td style="width: 175px"><span>&amp;Alpha;</span></td>
      <td style="width: 175px"><span>Α</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>Β</span></td>
      <td style="width: 175px"><span>Beta</span></td>
      <td style="width: 175px"><span>&amp;Beta;</span></td>
      <td style="width: 175px"><span>Β</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>Γ</span></td>
      <td style="width: 175px"><span>Gamma</span></td>
      <td style="width: 175px"><span>&amp;Gamma;</span></td>
      <td style="width: 175px"><span>Γ</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>Δ</span></td>
      <td style="width: 175px"><span>delta</span></td>
      <td style="width: 175px"><span>&amp;Delta;</span></td>
      <td style="width: 175px"><span>Δ</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>Ε</span></td>
      <td style="width: 175px"><span>Epsilon</span></td>
      <td style="width: 175px"><span>&amp;Epsilon;</span></td>
      <td style="width: 175px"><span>Ε</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>Ζ</span></td>
      <td style="width: 175px"><span>Zeta</span></td>
      <td style="width: 175px"><span>&amp;Zeta;</span></td>
      <td style="width: 175px"><span>Ζ</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>♥</span></td>
      <td style="width: 175px"><span>BLACK HEART SUIT = valentine</span></td>
      <td style="width: 175px"><span>&amp;hearts;</span></td>
      <td style="width: 175px"><span>♥</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>♣</span></td>
      <td style="width: 175px"><span>BLACK CLUB SUIT = shamrock</span></td>
      <td style="width: 175px"><span>&amp;clubs;</span></td>
      <td style="width: 175px"><span>♣</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>♠</span></td>
      <td style="width: 175px"><span>BLACK SPADE SUIT</span></td>
      <td style="width: 175px"><span>&amp;spades;</span></td>
      <td style="width: 175px"><span>♠</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>↓</span></td>
      <td style="width: 175px"><span>DOWNWARDS ARROW</span></td>
      <td style="width: 175px"><span>&amp;darr;</span></td>
      <td style="width: 175px"><span>↓</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>→</span></td>
      <td style="width: 175px"><span>RIGHTWARDS ARROW</span></td>
      <td style="width: 175px"><span>&amp;rarr;</span></td>
      <td style="width: 175px"><span>→</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>↑</span></td>
      <td style="width: 175px"><span>UPWARDS ARROW</span></td>
      <td style="width: 175px"><span>&amp;uarr;</span></td>
      <td style="width: 175px"><span>↑</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>←</span></td>
      <td style="width: 175px"><span>LEFTWARDS ARROW</span></td>
      <td style="width: 175px"><span>&amp;larr;</span></td>
      <td style="width: 175px"><span>←</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>™</span></td>
      <td style="width: 175px"><span>TRADEMARK</span></td>
      <td style="width: 175px"><span>&amp;trade;</span></td>
      <td style="width: 175px"><span>™</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>♦</span></td>
      <td style="width: 175px"><span>BLACK DIAMOND SUIT</span></td>
      <td style="width: 175px"><span>♦</span></td>
      <td style="width: 175px"><span>♦</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>°</span></td>
      <td style="width: 175px"><span>degree</span></td>
      <td style="width: 175px"><span>&amp;deg;</span></td>
      <td style="width: 175px"><span>°</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∞</span></td>
      <td style="width: 175px"><span>infinity</span></td>
      <td style="width: 175px"><span>&amp;infin;</span></td>
      <td style="width: 175px"><span>∞</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>‰</span></td>
      <td style="width: 175px"><span>per-mille</span></td>
      <td style="width: 175px"><span>&amp;permil;</span></td>
      <td style="width: 175px"><span>‰</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>⋅</span></td>
      <td style="width: 175px"><span>dot operator</span></td>
      <td style="width: 175px"><span>&amp;sdot;</span></td>
      <td style="width: 175px"><span>⋅</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>±</span></td>
      <td style="width: 175px"><span>plus-minus</span></td>
      <td style="width: 175px"><span>&amp;plusmn;</span></td>
      <td style="width: 175px"><span>±</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>†</span></td>
      <td style="width: 175px"><span>hermitian</span></td>
      <td style="width: 175px"><span>&amp;hercon;</span></td>
      <td style="width: 175px"><span>⊹</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>–</span></td>
      <td style="width: 175px"><span>minus sign</span></td>
      <td style="width: 175px"><span>&amp;minus;</span></td>
      <td style="width: 175px"><span>−</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>¬</span></td>
      <td style="width: 175px"><span>–</span></td>
      <td style="width: 175px"><span>&amp;not;</span></td>
      <td style="width: 175px"><span>¬</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>%</span></td>
      <td style="width: 175px"><span>percent sign</span></td>
      <td style="width: 175px"><span>&amp;percent;</span></td>
      <td style="width: 175px"><span>%</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>f</span></td>
      <td style="width: 175px"><span>Function</span></td>
      <td style="width: 175px"><span>&amp;fnof;</span></td>
      <td style="width: 175px"><span>ƒ</span></td>
    </tr>
    <tr>
      <td style="width: 175px"><span>∥</span></td>
      <td style="width: 175px"><span>parallel</span></td>
      <td style="width: 175px"><span>&amp;parallel;</span></td>
      <td style="width: 175px"><span>∥</span></td>
    </tr>
  </tbody>
</table>

