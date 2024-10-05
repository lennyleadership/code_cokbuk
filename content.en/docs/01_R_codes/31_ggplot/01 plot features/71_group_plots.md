---
weight: 71
title: Group plots
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-06"
lastmod: "2024-04-06"
series:
toc: true
---


<!--more-->


# place multiple charts side-by-side
```
library(gridExtra)

library(grids)

plot_1 <- ggplot()
plot_2 <- ggplot()
plot_3 <- ggplot()

grid.arrange(plot_1, plot_2, plot_3, ncol = 3, 
top = textGrob("title", gp = gpar(fontsize = 10, font = 2)))

plot_combine <- arrangeGrob(plot_1_alpha, plot_2_alpha, plot_3_alpha, ncol = 3, 
top = textGrob("title", gp = gpar(fontsize = 10, font = 2)))

ggsave(filename = "images/atten_eff_curves_combine_alpha.png", plot_combine, 
limitsize = F, device = 'png', dpi = 400)

```

```
library(ggpubr)

theme_set(theme_pubr())
ggarrange(bxp, dp, lp,
          labels = c("A", "B", "C"),
          ncol = 2, nrow = 2)
```