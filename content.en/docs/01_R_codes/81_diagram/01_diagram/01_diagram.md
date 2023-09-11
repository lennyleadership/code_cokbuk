---
weight: 1
title: Diagram
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

```
graph <- create_graph()%>%
  add_path(
    n = 4, type = "step",
    label = c("item_1", "item_2", "item_3 \n item_4", "item_5"),
    node_aes = node_aes(
      shape = c("plaintext", "plaintext","plaintext")
    )
  )
```