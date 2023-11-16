---
weight: 04
title: Create a List
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-15"
lastmod: "2023-11-15"
series:
toc: true
---


<!--more-->
---

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