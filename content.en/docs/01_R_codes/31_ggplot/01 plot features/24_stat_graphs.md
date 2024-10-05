---
weight: 24
title: Statistics Graphs
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

# dchisq distribution

```
ggplot(data.frame(x = c(0, 20))) +
  stat_function(fun = dchisq, args = list(df = 1), aes(x = x, color = " 1"), size = 1.5) +
  stat_function(fun = dchisq, args = list(df = 3), aes(x = x, color = " 3"), size = 1.5) +
  stat_function(fun = dchisq, args = list(df = 6), aes(x = x, color = " 6"), size = 1.5) +
  stat_function(fun = dchisq, args = list(df = 10), aes(x = x, color = "10"), size = 1.5) +
  stat_function(fun = dchisq, args = list(df = 15), aes(x = x, color = "15"), size = 1.5) +
  stat_function(fun = dchisq, args = list(df = 99), aes(x = x, color = "99"), size = 1.5) +
  labs(
    y = "", x = ""
  )
```

# t-distribution

https://stackoverflow.com/questions/46848998/superimposing-asymmetric-t-distribution-using-ggplot2