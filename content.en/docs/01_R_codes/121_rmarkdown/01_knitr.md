---
weight: 1
title: knitr
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-09"
lastmod: "2024-06-02 "
series:
toc: true
---


<!--more-->


Always put your default setting in the code chunk at the front.

```
knitr::opts_chunk$set(echo = F, message = F, warning = F, include=FALSE, ft.align="left")
```

# Insert an image in bookdown

<b>Option #1</b>  
```
{r fig21, fig.cap='Counting characteristics of gas-filled detectors', echo=FALSE, message=FALSE, warning=FALSE}

knitr::include_graphics("./images/counting_characteristics_gas_detector.png")
```

<b>Option #2</b>  
 
`<img src ="./images/webinar_fisher_glp_pipetting.png">`
