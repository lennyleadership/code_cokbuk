---
weight: 71
title: Scale plot
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
---

# Facet grid-independant axis scale

```

facet_wrap(~element, scales = "free_y")

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


```

coord_cartesian(ylim = c(0,900))

```