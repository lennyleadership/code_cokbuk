---
weight: 23
title: Timeline Graph Using ggplot2
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
ggplot(outlier, aes(displ, hwy)) +
  # add labels
  geom_text(aes(label = model), vjust = -0.5, hjust=0.5)+
  # add a straight line
  geom_segment(aes(x = displ, y = 0, xend = displ, yend = hwy))
```