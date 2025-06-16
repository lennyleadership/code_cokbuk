---
weight: 01
title: Tutorial
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-17"
lastmod: "2024-03-17"
series:
toc: true
---


<!--more-->
---

# Case #1

```
df <- data.frame(date = as.Date('2022-01-01') + 0:9,
                 sales = runif(10, 10, 500) + seq(50, 59)^2)


library(stats)  # Package for 'ts' class

# Unleash the time series magic!
ts_sales <- ts(df$sales, start = c(2022, 1), frequency = 365)  # Daily data

# Admire your creation:
print(ts_sales)

```

Time Series:  
Start = c(2022, 1)   
End = c(2022, 10)   
Frequency = 365   
 [1] 2728.713 3026.967 2769.227 2928.872 3401.730 3129.780 3303.479 3414.551  
 [9] 3584.525 3922.348


```
library(xts)  # Package for 'xts' class

# Time to shine!
xts_sales <- xts(df$sales, order.by = df$date)

# Behold your masterpiece:
print(xts_sales)

```

```
               [,1]  
2022-01-01 2728.713  
2022-01-02 3026.967  
2022-01-03 2769.227  
2022-01-04 2928.872  
2022-01-05 3401.730  
2022-01-06 3129.780  
2022-01-07 3303.479  
2022-01-08 3414.551  
2022-01-09 3584.525  
2022-01-10 3922.348  
```

<a href = "https://www.r-bloggers.com/2023/12/unlocking-the-power-of-time-transforming-data-frames-into-time-series-in-r/" target="_blank" rel="noopener noreferrer">R-bloggers | Unlocking the Power of Time: Transforming Data Frames into Time Series in R</a>


#
Time series tutorial (1)  
Time Series 01: Why Metadata Are Important: How to Work with Metadata in Text & EML Format
 
https://www.neonscience.org/resources/learning-hub/tutorials/dc-metadata-importance-eml-r
 

Time series tutorial (2)  
 
https://www.neonscience.org/resources/learning-hub/tutorials/dc-convert-date-time-posix-r

