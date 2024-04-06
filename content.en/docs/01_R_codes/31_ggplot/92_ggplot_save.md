---
weight: 92
title: Save ggplot
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-14"
lastmod: "2024-04-06"
series:
toc: true
---


<!--more-->
---

# export ggplot to a high definition image

```

ggsave(filename = "images/*.png", limitsize = F, 
width = 8, device = 'png', dpi = 700)

```
