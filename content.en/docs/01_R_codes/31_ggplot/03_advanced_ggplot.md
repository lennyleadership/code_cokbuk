---
weight: 03
title: Advanced ggplot()
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-26"
lastmod: "2023-10-26"
series:
toc: true
---


<!--more-->
---

# place multiple charts side-by-side
```
library(gridExtra)
plot1 <- ggplot()
plot2 <- ggqqplot()

grid.arrange(plot1, plot2, ncol = 2)
```



# Add complexity to a plot


Add jitter points to a box plot: 
```
geom_jitter(color="black", size=0.4, alpha=0.5)
```


add points to a boxplot with label:
```
geom_text(position=position_jitter(width=.15, height = .1))+
geom_point(aes(color=variable), position = position_jitterdodge(dodge.width = 0.1),size=3, alpha=1)
```