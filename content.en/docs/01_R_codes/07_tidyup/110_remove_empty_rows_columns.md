---
weight: 110
title: Remove empty columns in rows
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-14"
lastmod: "2024-03-14"
series:
toc: true
---


<!--more-->
---

Situation: There are rows having NA in each column.

Goal: remove empty columns

```

df[rowSums(is.na(df[,7:15])) != ncol(df[,7:15]), ]


```


Reference: <a href = "https://www.r-bloggers.com/2021/06/remove-rows-that-contain-all-na-or-certain-columns-in-r/" target="_blank" rel="noopener noreferrer">R Bloggers | Remove rows that contain all NA or certain columns in R</a>