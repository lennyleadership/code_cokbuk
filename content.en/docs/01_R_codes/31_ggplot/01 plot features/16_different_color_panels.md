---
weight: 16
title: Different Color Panels
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


# Two different panel color backgrounds in ggplot
``` 
annotate("rect", fill = "#baffc9", alpha = .3, xmin = as.Date("2022-05-03"), xmax = as.Date("2023-10-18"),ymin = -Inf, ymax = Inf)

annotate("rect", fill = "#bae1ff", alpha = .3, xmin = as.Date("2023-10-18"), xmax = as.Date("2024-03-28"),ymin = -Inf, ymax = Inf)
```
 
or 
``` 
geom_rect(aes(xmin = as.Date("2022-05-03"), xmax = as.Date("2023-10-18"),
                ymin = -Inf, ymax = Inf), fill = "#baffc9") # alpha = .2 does not work
```