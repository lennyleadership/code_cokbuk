---
weight: 03
title: Change the header in a list
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-04-18"
lastmod: "2025-04-18"
series:
toc: true
---


<!--more-->

```
header_names <- c("sample_id", "Nuclide", "Activity..bq.unit", "Activity.Uncertainty..bq.units", "MDA..bq.units","Units")

list_gamma_press <- lapply(list_gamma_press, setNames, header_names)

df_gamma_press <- do.call(rbind, list_gamma_press)
```