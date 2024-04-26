---
weight: 32
title: Tufte Style
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
series:
toc: true
---


<!--more-->

# Sidnote and Numbering

Apply the following html line to the body:  

`<label for="text content" class="margin-toggle sidenote-number"></label><span class="sidenote"></span>` 

`<a></a>` works, but the `<a></a>` gives blue color to the text.

# Margin note
`<label for="" class="margin-toggle marginnote"></label><span class="marginnote"><em>test</em></span>`

Below is the css: 

```
/* Tufte webpage (body and margine) layout *********************************/

body {
    width: 87.5%; /* 87.5*/
    margin-left: auto;
    margin-right: auto;
    padding-left: 5%; /*left margin: 12.5*/
    font-family: Calibri;
    color: #111;
    max-width: 1400px;
    counter-reset: sidenote-counter;
}

.sidenote,
.marginnote {
    float: right;
    clear: right;
    margin-right: -60%; /*60*/
    width: 50%; /*50*/
    margin-top: 0.3rem;
    margin-bottom: 0;
    font-size: .8rem; /*define the side note font size*/
    font-style: italic;
    line-height: 1.3;
    vertical-align: baseline;
    position: relative;
}

/*end****************************************************************/


/* sidenote numbering ************************************************/

.sidenote-number {
    counter-increment: sidenote-counter;
}

.sidenote-number:after,
.sidenote:before {
    font-family: Calibri;
    position: relative;
    vertical-align: baseline;
}


.sidenote-number:after {
    content: counter(sidenote-counter);
    font-size: 1rem;/*define the numbering index in the body*/
    top: -0.5rem;
    left: 0.3rem;
}


.sidenote:before {
    content: counter(sidenote-counter) " ";
    font-size: 1rem;
    font-style: italic; /* define the numbering index in the sidenote*/
    top: -0.5rem;
}


label.sidenote-number {
    display: inline-block;
    max-height: 2rem; /* should be less than or equal to paragraph line-height */
    font-style: italic;
}


label.margin-toggle:not(.sidenote-number) {
    display: none;
}

/* end **************************************************************************/
```

# Tufte codes

<a href = "https://github.com/edwardtufte/tufte-css/blob/gh-pages/index.html" target="_blank" rel="noopener noreferrer">Tufte codes</a>

 
# Tufte demo
<a href = "edwardtufte.github.io" target="_blank" rel="noopener noreferrer">Tufte CSS demo</a>

