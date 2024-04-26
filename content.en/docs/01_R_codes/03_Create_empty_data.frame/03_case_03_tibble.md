---
weight: 03
title: Tibble
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2024-04-06"
lastmod: "2024-04-06"
series:
toc: true
---


<!--more-->
---

```
tib <- tibble(v1 = letters[1:4],
              v2 = c(1, 3, 5, 2))
```

```
z <- tibble(x=c(LETTERS[1:5],NA,rep("",2)),
             y=c(1:5,rep(NA,3)),
            z=c(LETTERS[1:5], NA, "1", "2"),
            m = rep(NA,8))
```