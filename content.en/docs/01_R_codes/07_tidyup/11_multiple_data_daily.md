---
weight: 11
title: "Deal With Multiple Data on Days"
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

Situation: There are multiple data on days.  Dates are duplicated. 

Solution: Take average.

```
df_1 <- aggregate(df[,-1], by = list(Collection_Date = df[,1]),
          data = df, FUN = mean)

```