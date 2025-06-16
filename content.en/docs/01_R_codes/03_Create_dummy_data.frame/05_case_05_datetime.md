---
weight: 05
title: datetime
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
```
library(lubridate)

days = 365*2
date = seq(as.Date("2000-01-01"), length = days, by = "day")
year = year(date)
month = month(date)
x1 = cumsum(rnorm(days, 0.05))
x2 = cumsum(rnorm(days, 0.05))
df1 = data.frame(date, year, month, x1, x2)
```