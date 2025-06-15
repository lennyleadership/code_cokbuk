---
weight: 114
title: Check duplicates
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

Check duplicate.
```
Df |>
dplyr::summarise(n = dplyr::n(), .by = c(sample_id, collection_date, analyte)) |>
  dplyr::filter(n > 1L) 
```