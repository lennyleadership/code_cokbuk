---
weight: 01
title: Two-Way ANOVA
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-27"
lastmod: "2023-10-27"
series:
toc: true
---


<!--more-->
---

To check interaction between var1 and var2 in addition to two variables: 
```
aov_list <- aov(response ~ var1 * var2, data = df)
```


To check two variables only: 
```
aov_list <- aov(response ~ var1 + var2, data = df)
```


To print the anova residual nicely:
```
d_list_1 <-summary(aov_list) 

dtable <-as.data.frame(do.call(cbind, d_list_1))

dtable$term <- row.names(dtable)

dtable <- dtable[,c(6, 1:5)]

flextable(dtable)
```