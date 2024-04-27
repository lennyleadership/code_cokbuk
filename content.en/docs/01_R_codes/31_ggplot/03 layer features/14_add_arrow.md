---
weight: 14
title: Add an arrow
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-06"
lastmod: "2024-04-06"
series:
toc: true
---


<!--more-->


# Add an arrow segment
```
geom_segment(aes(x = 9, y = -4, xend = 9, yend = -5), 
            arrow = arrow(length = unit(0.3, "cm")))
```