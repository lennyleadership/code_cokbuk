---
weight: 02
title: Circle Diagram
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
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
# build circle diagram ----
graph <- create_graph()%>%
  add_cycle(
            n = 5,
            label = c("a","b","c","d","e"),
            node_aes = node_aes(
                                shape = "plaintext",
                                fillcolor = "steelblue"
                              ),
            edge_aes = edge_aes(
                                style = "bold",
                                len = 0.8,
                                color = "steelblue",
                                penwidth = 1,
                                headclip = T
                              )
  )

# view the graph in the viewer----
graph %>% render_graph()

# export as a SVG ----
dest.filepath <- r"( )"

graph %>%
  export_graph(file_name = paste0(dest.filepath, "/","image_name.png"))

```