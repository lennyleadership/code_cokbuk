---
weight: 13
title: Boxplot
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-25"
lastmod: "2024-04-25"
series:
toc: true
---


<!--more-->
---

# Add points to a boxplot with label

```
geom_text(position=position_jitter(width=.15, height = .1))+
geom_point(aes(color=variable), 
            position = position_jitterdodge(dodge.width = 0.1),
            size=3, alpha=1)
```