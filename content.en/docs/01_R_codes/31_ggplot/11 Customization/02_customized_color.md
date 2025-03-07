---
weight: 02
title: Customized Colors
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2025-03-06"
lastmod: "2025-03-06"
series:
toc: true
---


```
# color codes ----
color_codes <- c("","","")

# color palettes array ----
color_palletes <- c("#f04d43","#33a02c", "#ABA6AA")

 
# link color_palettes with a group by a function.
customized_color <- function(color_palettes, color_codes){
  scale_color_manual(values = setNames(color_palettes, color_codes) )
}
 
### example
df |>
  ggplot(aes(x = , y = , colour = flag))+
  customized_color(color_palletes, color_codes)
###
```


 
Reference: <a href = "https://www.sthda.com/english/wiki/ggplot2-colors-how-to-change-colors-automatically-and-manually" target="_blank" rel="noopener noreferrer">STHDA | ggplot2 colors : How to change colors automatically and manually?</a>
