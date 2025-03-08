---
weight: 01
title: Customized Theme
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-03-06"
lastmod: "2025-03-06"
series:
toc: true
---

The following customized theme doesn't have frame, x-axis, y-axis 

```
theme_event <- function(){
  theme(
    plot.title = element_text(hjust = .5, size = 16),
    axis.text = element_text(size = 6),
    axis.title = element_text(size = 6),
 
    axis.line.y=element_blank(),
    axis.text.y=element_blank(),
    axis.title.x=element_blank(),
    axis.title.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.text.x =element_blank(),
    axis.ticks.x =element_blank(),
    axis.line.x =element_blank(),
 
    panel.grid = element_line(colour = "#fffff8"),
    panel.border = element_rect(fill = NA,colour = "#fffff8"),
    panel.background = element_rect(fill = "#fffff8"),
 
    # color in plot.background defines plot line color
    plot.background = element_rect(fill = "#fffff8", color = "#fffff8"),
 
    legend.position = "bottom",
    # color in legend background
    legend.background = element_rect(fill = "#fffff8")
  )
}
```


