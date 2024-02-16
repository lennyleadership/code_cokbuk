---
weight: 21
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
  group_by(element) %>%
  summarise(mean = mean(column_A), median = median(column_A),
  quantile_1 = quantile(column_A,0.25),
  quantile_3 = quantile(column_A,0.75),
  quantile_4 = quantile(column_A,0.95))
```

```
dgw_distribution_1 <- tapply(dgw_common_elements_c$conc,
dgw_common_elements_c$element, function(x) format(summary(x), scientific = F))

dgw_distribution_2 <- as.data.frame(do.call(cbind,dgw_distribution_1))
```

Difference between Boolean operators && and & and between || and | in R
https://stackoverflow.com/questions/6558921/difference-between-boolean-operators-and-and-between-and-in-r




boxplot statistical data
```
boxplot_stats <- boxplot.stats(df$column_A, coef = 1.5, do.conf = T, do.out = T)

boxplot_stats[[1]]
```