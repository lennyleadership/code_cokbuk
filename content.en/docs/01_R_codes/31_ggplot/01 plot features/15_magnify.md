---
weight: 15
title: Magnify a Plot
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

# Solution #1

```
# Build a big one

(plot_whole <- df |>
    filter(parameters == ABC) |>
    ggplot(aes(x = collection_date, y = value))+
    geom_point(aes(color = group))+
    theme_bw()+
    ylim(0,100)+
    scale_color_manual(values = setNames(color.codes, group))+
    annotate("rect", fill = "#baffc9", alpha = .3, xmin = as.Date("2022-05-03"), xmax = as.Date("2023-10-18"), 
             ymin = -Inf, ymax = Inf)+
    annotate("rect", fill = "#bae1ff", alpha = .3, xmin = as.Date("2023-10-18"), xmax = as.Date("2024-03-28"), 
             ymin = -Inf, ymax = Inf)+
    labs(title = "Big title", x = "",
         caption = "XYZ")+
    theme(legend.position = "none",
          plot.caption = element_text(hjust = 0, size = 10))
)

# Build a small one

(plot_small <- df_2sbrs_4 |>
    filter(parameters == ABC & (value > 0 & value <1))  |>
    ggplot(aes(x = collection_date, y = value))+
    geom_point(aes(color = group))+
    theme_bw()+
    scale_color_manual(values = setNames(color.codes, group))+
    labs(x = "", y = "")+
    annotate("rect", fill = "#fabb22", alpha = .3, xmin = as.Date("2022-05-03"), xmax = as.Date("2024-03-28"), 
             ymin = 0.05, ymax = .25)+
    geom_text(x = as.Date("2022-07-01"), y = .23, label = "XYZ", hjust = 0,size = 3)+
    theme(legend.position = "none")
)
 
# Put the small one into the big one

plot_big + 
  annotation_custom(ggplotGrob(plot_small), xmin = as.Date("2022-05-03"), xmax = as.Date("2024-03-28"), ymin = 45, ymax = 100) +
  geom_rect(aes(xmin = as.Date("2022-05-03"), xmax = as.Date("2024-03-28"), ymin = 0, ymax = 1), color='black', linetype='dashed', alpha=0)
```