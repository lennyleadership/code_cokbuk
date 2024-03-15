---
weight: 10
title: Remove empty rows and columns
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

```

df[rowSums(is.na(df)) != ncol(df), ]

```
