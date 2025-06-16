---
weight: 03
title: Troubleshooting
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
z_df <- D_SW_ALPHA |>
  filter(!(FIELD_QC_TYPE %in% c("LB","LD","LR", "MS", "")) ) |>
  group_by(loc_code, col_date) |>
  filter(n()>1)
 
 
D_SW_ALPHA_FD <- D_SW_ALPHA |>
  filter(!(FIELD_QC_TYPE %in% c("LB","LD","LR", "MS", "")) ) |>
  group_by(loc_code, col_date) |>
  filter(n()>1) |>
  group_by(loc_code, col_date, FIELD_QC_TYPE) |>
  filter(n()==1)
 
# The size of z_df is larger than the size of D_SW_ALPHA_FD.
 
 
# Anti_join can help to identify mislabeled "FIELD_QC_TYPE".  It should be “N” and “FD”, now it is “N”, and “N”.
 
z <- z_df |>
  anti_join(D_SW_ALPHA_FD, by = c("sample_id", "loc_code", "col_date", "FIELD_QC_TYPE", "ANALYSIS_FREQ"))

```