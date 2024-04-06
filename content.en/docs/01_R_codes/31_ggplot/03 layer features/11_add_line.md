---
weight: 11
title: Add line
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
---

# Add a horizontal line
```
geom_hline(yintercept = 60, linetype="dashed", color = "brown")+
geom_hline(yintercept = 160, linetype="dashed", color = "brown")+
```


# Add a line segment
```
geom_segment(aes(x = ##, y = 0, xend = ##, yend = 10), 
             color = "darkgreen", linewidth = 1.5)
```
