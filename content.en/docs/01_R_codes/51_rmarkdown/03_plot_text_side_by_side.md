---
weight: 03
title: "Put Plot and Text Side-by-Side"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-05"
lastmod: "2024-04-05"
series:
toc: true
---


<!--more-->
---

Situation: Don't want to place the plot in the middle.

````
<style type="text/css">
   .main-container {max-width: 100%;}
   .row {display: flex;}
   .column {flex: 50%;}
</style>

<div class = "row">
  <div class = "column">
## show figure
``{r echo=FALSE}
s1
``
  </div>

  <div class = "column">
## show table
``{r echo=FALSE}
dat.ct %>%
    datatable()
``
  </div>
</div>


```

Reference: <a href = "https://forum.posit.co/t/rmarkdown-place-figure-and-table-side-by-side-in-html-document/146181" target="_blank" rel="noopener noreferrer">Posit | Place figure and table side-by-side in html document</a>