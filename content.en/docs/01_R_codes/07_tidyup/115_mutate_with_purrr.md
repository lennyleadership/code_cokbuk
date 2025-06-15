---
weight: 115
title: mutate with purrr
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

```
library(purrr)
 
my_data <- data.frame(date = as.Date(c("2022-03-08","2023-03-07","2022-11-29","2024-02-22")),
                      value = 1:4)
 
tox_date_1q <- as.Date(c("2022-03-08","2023-03-07","2024-02-21"))
 
tox_date_3q <- as.Date(c("2022-06-21","2022-09-14","2022-11-29","2023-06-05","2023-09-13","2023-11-14"))
 
c("tox_date_1q", "tox_date_3q", "tox_period_1q", "tox_period_3q", "others")
 
 
  mutate(group = case_when(
    collection_date %in% tox_date_1q ~ "tox_date_1q", 
    collection_date %in% tox_date_3q ~ "tox_date_3q", 
    map_vec(collection_date, ~ any(.x > tox_date_1q-30 & .x < tox_date_1q+30)) ~ "tox_period_1q", 
    map_vec(collection_date, ~ any(.x > tox_date_3q-30 & .x < tox_date_3q+30)) ~ "tox_period_3q", 
    .default = "other")
  )

```