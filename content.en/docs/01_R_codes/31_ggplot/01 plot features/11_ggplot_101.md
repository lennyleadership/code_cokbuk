---
weight: 11
title: ggplot2 101
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-10"
lastmod: "2023-10-27"
series:
toc: true
---


<!--more-->
---

# Set the background as black & white:  
```
theme_set(theme_bw())
```


#  ‘jitter’ overlapped geom_pointrange
```
geom_point(aes(y = AssignedValue), shape = 21, size = 3, color = "red",
             position = position_dodge2(width = 1))+
geom_pointrange(aes(y = ReportedValue,ymin = Low_Limit, ymax = High_Limit), 
                  size = 1, color = "blue",
                  position = position_dodge2(width = 1))
```


# geom_density 

Use it when putting density plot over histogram plot.  

```
geom_density(aes( y = ..count../2))
```


# set axis range
```
coord_cartesian(ylim = c(0,900))
```







