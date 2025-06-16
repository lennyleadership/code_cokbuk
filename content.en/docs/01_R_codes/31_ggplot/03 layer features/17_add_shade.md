---
weight: 17
title: Add a Shade
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-06-15"
lastmod: "2025-06-15"
series:
toc: true
---


<!--more-->


geom_rect | Shade portion in ggplot

``` 
geom_rect(aes(xmin = as.POSIXct("2025-03-02 00:00:00"), ymin= -Inf ,xmax = as.POSIXct("2025-03-05 23:00:00"), ymax = Inf ), 
          fill = "lightgreen", alpha = 0.01 )
```

Note: `alpha` defines transparency.