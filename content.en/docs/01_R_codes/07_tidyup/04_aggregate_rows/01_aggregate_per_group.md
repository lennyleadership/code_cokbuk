---
weight: 11
title: Aggregate multiple columns per group
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-05"
lastmod: "2024-04-05"
series:
toc: true
---


<!--more-->

# Aggregate /summarize multiple variables (columns) per group

Option #1: 
```
B_anions_avg <- aggregate(
  x = A_anions[c("Cl", "F", "SO4")],
  by = A_anions[c("loc_code", "col_date")],
  FUN = mean, na.rm = T
)
``` 
Note: This works
 
Reference: https://stackoverflow.com/questions/9723208/aggregate-summarize-multiple-variables-per-group-e-g-sum-mean


Option #2: 
```
B_anions_avg <- aggregate(cbind(Cl, F, SO4) ~ loc_code + col_date, data = A_anions, mean, na.rm = TRUE)
```
Note: This gives me wrong average results.  The problem might be occurred for "F".


Option #3: 
```
z <- reshape2::melt(A_anions, id = c("loc_code", "col_date"))
 
B_anions_avg <- reshape2::dcast(z, loc_code + col_date ~ c(Cl, SO4), mean, na.rm = T)
``` 
Note: This does not work.



# Aggregate Multiple Data Everyday for Days

Situation: There are multiple data everyday for days.

Solution: Take average.

```
df_1 <- aggregate(df[,-1], by = list(Collection_Date = df[,1]),
          data = df, FUN = mean)

```