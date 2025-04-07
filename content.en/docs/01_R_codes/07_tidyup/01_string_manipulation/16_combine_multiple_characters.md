---
weight: 16
title: Combine Multiple Characters Into One Characters
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-10-04"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->

```
Library(stringr) # str_c from it.

z1 <- unique(df$detector_id)

z2 <- cbind(z1)

str_c(z2, collapse = ",")
```