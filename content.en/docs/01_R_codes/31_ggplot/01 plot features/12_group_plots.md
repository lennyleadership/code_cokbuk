---
weight: 12
title: Group plots
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2024-04-06"
lastmod: "2024-04-06"
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