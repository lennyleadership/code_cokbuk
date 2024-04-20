---
weight: 72
title: Heatmap with ggplot
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-27"
lastmod: "2023-10-27"
series:
toc: true
---


<!--more-->
---

Heatmap with ggplot():

```
ggplot(df, aes(x-axis, y-axis, fill = value))+
  geom_tile()+
  scale_fill_gradient(low="lightyellow", high="red")
```
