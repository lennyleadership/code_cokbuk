---
weight: 08
title: case_when()
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-27"
lastmod: "2023-10-27"
series:
toc: true
---


<!--more-->
---

# To create a categorical column
```
df %>%mutate(season = case_when(
  df$date <"2021-07-01" ~ "2021-Spring",
  df$date > "2021-07-01" &  df$date < "2021-12-01"~ "2021-Fall",
  df$date <"2022-07-01" ~ "2022-Spring",
  df$date > "2022-07-01" &  df$date < "2022-12-01"~ "2022-Fall",
  df$date <"2023-08-01" ~ "2023-Spring",
  df$date > "2023-08-01" &  df$date < "2023-12-01"~ "2023-Fall",
  .default = "other"
)
)
```