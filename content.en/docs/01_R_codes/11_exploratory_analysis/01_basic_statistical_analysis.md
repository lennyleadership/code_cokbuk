---
weight: 01
title: Basic statistical analysis
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
series:
toc: true
---


<!--more-->
---

`summarize()`
```
df %>%
  group_by(column) %>%
  summarize(mean =round(mean(value),0), sd = round(sd(value),0))
```


to focus on one column

```
df %>%
  summarise(mean = mean(column_A), median = median(column_A),quantile_1 = quantile(column_A,0.25),quantile_3 = quantile(column_A,0.75),quantile_4 = quantile(column_A,0.95))
```


boxplot statistical data
```
boxplot_stats <- boxplot.stats(df$column_A, coef = 1.5, do.conf = T, do.out = T)

boxplot_stats[[1]]
```