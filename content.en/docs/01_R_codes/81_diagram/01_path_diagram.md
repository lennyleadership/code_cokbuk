---
weight: 1
title: "Path Diagram with create_graph()"
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
# build path diagram ----
graph <- create_graph()%>%
  add_path(
            n = 4, 
            type = "step",
            label = c("item_1", "item_2", "item_3 \n item_4", "item_5"),
            node_aes = node_aes(
                                shape = c("plaintext", "plaintext","plaintext","plaintext"),
                                width = c(1.5, 1.5, 1.5, 1.5, 1.5),
                                color = NULL,
                                fontcolor = "black",
                                fillcolor = c("#d3d3d3","#d3d3d3","#d3d3d3","#d3d3d3"),
                                fontname = "Lato"
                              ),
          edge_aes = edge_aes(color = "3C3C3C")
          )%>%
  add_global_graph_attrs(attr = "layout", value = "dot", attr_type = "graph") %>%
  add_global_graph_attrs(attr = "rankdir", value = "LR", attr_type = "graph") %>%
  add_global_graph_attrs(attr = "bgcolor", value = "white", attr_type = "graph")

# view the graph in the viewer----
graph %>% render_graph()

# export as a SVG ----
dest.filepath <- r"( )"

graph %>%
  export_graph(file_name = paste0(dest.filepath, "/","image_name.png"))
```