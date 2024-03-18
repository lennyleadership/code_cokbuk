---
weight: 02
title: "Data frame for Time Series"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-17"
lastmod: "2024-03-17"
series:
toc: true
---


<!--more-->
---

```
df <- data.frame(date = as.Date('2022-01-01') + 0:9,
                 sales = runif(10, 10, 500) + seq(50, 59)^2)
                 
```                 