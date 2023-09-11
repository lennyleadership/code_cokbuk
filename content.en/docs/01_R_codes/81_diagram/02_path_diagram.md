---
weight: 2
title: "Path Diagram with grViz"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-10"
lastmod: "2023-09-10"
series:
toc: true
---


<!--more-->
---

Required libraries  

```
library(dplyr)

library(DiagrammeR)
library(DiagrammeRsvg)
```

<br><br>

```
image <- grViz(
              "digraph{
                      graph[layout = dot, rankdir =LR]
                      node[shape = rectange, style = filled, fillcolor = Linen]
                      
                      data1[label = 'item_1', fillcolor = Linen]
                      process1[label = 'item_2']
                      process2[label = 'item_3 \n item_4'
                      counter[label = 'item_5']
                      counter_1[label ='item_6']
              
              
              }"
)
```