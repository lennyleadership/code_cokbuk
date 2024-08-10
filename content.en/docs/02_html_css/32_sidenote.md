---
weight: 32
title: "Tufte Style/ Sidenote"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2024-08-09"
series:
toc: true
---


<!--more-->

<h1><span class = "overline">Sidnote and Numbering</span></h1>

Apply the following html line to the body:  

```
<label for="text content" class="margin-toggle sidenote-number"></label><span class="sidenote"></span>
``` 

`<a></a>` works, but the `<a></a>` gives blue color to the text.

<h1><span class = "overline">An image can be used in the sidenote</span></h1>

```
<label for="cambium" class="margin-toggle sidenote-number"></label><span class="sidenote">Palm tree distinction <br>![](https://d55v7rs15ikf5.cloudfront.net/original/3X/3/8/38f1c61f53239f18824e5ae43c87c4d8217ee3bf.jpeg)</span>
```

<h1><span class = "overline">Margin note</span></h1>

```
<label for="" class="margin-toggle marginnote"></label><span class="marginnote"><em>test</em></span>
```


<h1><span class = "overline">Below is the css</span></h1>

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

<h1><span class = "overline">Tufte codes</span></h1>

<a href = "https://github.com/edwardtufte/tufte-css/blob/gh-pages/index.html" target="_blank" rel="noopener noreferrer">Tufte codes</a>

 
<h1><span class = "overline">Tufte demo</span></h1>
<a href = "edwardtufte.github.io" target="_blank" rel="noopener noreferrer">Tufte CSS demo</a>

<a href = "https://www.princexml.com/howcome/2022/guides/sidenotes/" target="_blank" rel="noopener noreferrer">A quick guide to creating sidenotes in Prince</a>

<a href = "https://gwern.net/sidenote" target="_blank" rel="noopener noreferrer">GWERN | Sidenotes In Web Design</a>

