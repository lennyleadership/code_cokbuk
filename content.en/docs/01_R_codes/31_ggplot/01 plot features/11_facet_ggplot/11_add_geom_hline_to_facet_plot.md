---
weight: 11
title: Add geom_hline to facet plot
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-04-18"
lastmod: "2025-04-18"
series:
toc: true
---


<!--more-->

Add geom_line in facet_wrap

```
# create a separate data frame
dMean <- mtcars %>%
    group_by(gear) %>%
    summarise(MN = mean(cyl))

 
ggplot(mtcars) +
    geom_point(aes(mpg, cyl)) +
# quote the separate data frame
    geom_hline(data = dMean, aes(yintercept = MN)) +
    facet_wrap(~ gear)
```
