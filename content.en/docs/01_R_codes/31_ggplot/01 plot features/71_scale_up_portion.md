---
weight: 71
title: Scale Up Axis
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-14"
lastmod: "2024-03-14"
series:
toc: true
---


<!--more-->

# Facet grid-independant axis scale

```
facet_wrap(~element, scales = "free_y")
```

# facet_zoom

```
plot_NH3_inf_big+
  facet_zoom(xlim = as.Date(c("2023-06-02", "2023-08-15")),
             ylim = c(0,20) )
```

# zoom x-axis

```
ggplot(...)+
  geom_point()+
  xlim(0,100)
```

```
scale_fill_viridis(discrete = TRUE, alpha=0.5)
```


# set axis range
```
coord_cartesian(ylim = c(0,900))
```