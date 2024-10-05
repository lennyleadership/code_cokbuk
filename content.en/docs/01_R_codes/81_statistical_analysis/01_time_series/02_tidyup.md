---
weight: 02
title: Tidyup
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-06-02 "
lastmod: "2024-06-02 "
series:
toc: true
---


<!--more-->
---

fill the empty with the average of before and after data  for time series analysis
 
```
names(z)
 
n <- which(is.na(z$Inf_flow ) )
 
m <- setdiff(which(!is.na(z$Inf_flow) ), n )
 
ind <- findInterval(n, m)
 
z1 <- within(z, Inf_flow <- replace(Inf_flow, n, rowMeans(cbind(Inf_flow[m[ind] ], Inf_flow[m[ind+1 ] ] ) ) ) )
 
n <- which(is.na(z1$Inf_flow ) )
 
z[n[1], ]
z1[n[1], ]
```