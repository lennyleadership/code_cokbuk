---
weight: 19
title: Merge multiple rows per group
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-10-04"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->

```
sum_NA <- function(x) {if (all(is.na(x))) x[NA_integer_] else sum(x, na.rm = TRUE)}
 
y1 <- z1 |>
  group_by(collection_date, ANALYSIS_FREQ) |>
  summarise_all(sum_NA) # 1276 unique dates

summary(y1)
```

```
df %>%
group_by() %>%
summarise_all(funs(trimws(paste(., collapse = ''))))
```