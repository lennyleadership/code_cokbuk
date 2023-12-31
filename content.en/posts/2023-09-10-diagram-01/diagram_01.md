---
title: "Diagram demo 01"
author: "Lenny Lin"
date: 2023-09-10
categories: ["R"]
tags: ["Diagram demo"]
---




```r
# build path diagram ----
graph <- create_graph()%>%
  add_path(
            n = 4, 
            type = "step",
            label = c("item_1", "item_2", "item_3 \n item_4", "item_5"),
            node_aes = node_aes(
                                shape = c("plaintext", "plaintext","plaintext","plaintext"),
                                width = c(1.5, 1.5, 1.5, 1.5),
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


# export as a SVG ----
dest.filepath <- r"(D:\A_Blog with R\code_cokbuk\content.en\posts\images)"

graph %>%
  export_graph(file_name = paste0(dest.filepath, "/","diagram_demo_01.png"))
```
