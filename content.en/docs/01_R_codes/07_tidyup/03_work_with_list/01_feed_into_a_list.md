---
weight: 01
title: Feed into a list
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-15"
lastmod: "2024-03-14"
series:
toc: true
---


<!--more-->


# Case #1

```
a_list = list()

n = 1
for (i in 1: length(blank_list_pwiz)){
  for (j in 1: lengths(blank_list_pwiz[1])){
    sample_name <- basename(fileName(blank_list_pwiz[[i]]))
    rt <- header(blank_list_pwiz[[i]])[,c("retentionTime")][j]
    tic <- header(blank_list_pwiz[[i]])[,c("totIonCurrent")][j]
    bpc <- header(blank_list_pwiz[[i]])[,c("basePeakIntensity")][j]
    list_temp <- data.frame(sample_name, rt, tic, bpc)
    list_temp$n<-n
    b_list[[n]] <- list_temp
    n=n+1
  }
  n = n+1
}

blank_df_raw <- do.call(rbind, a_list)

a_list <- list()

list_temp <- data.frame()

```
Note: Assign each row with a number.


# Case #2

```
for (i in 1:length(list)){
  count_time_alpha <- list[[i]]$Alpha[1]
  ref_date_alpha <- list[[i]]$Alpha[2]
  ref_activity_alpha <- list[[i]]$Alpha[3]
  ref_unc_alpha <- list[[i]]$Alpha[4]
  half_life_alpha <- list [i]]$Alpha[5]
  file_name <- list[[i]]$file_names[1]
  
  source_alpha[[i]] <- data.frame(count_time_alpha,ref_date_alpha,
  ref_activity_alpha,ref_unc_alpha,half_life_alpha,file_name)
```

<ol>Note: 
<li>I parse cell info from excel files in a list, then make a list by merging all contents together.</li>
<li>list [[i]]$file_names[1] determines the number of rows.</li>
</ol>




