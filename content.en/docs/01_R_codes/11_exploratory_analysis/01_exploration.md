---
weight: 01
title: Exploration 101
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

# Uniqueness of the dataset
```
df_uniqueness <- sapply(df_files_original, unique)

df_uniqueness[[28]]

sapply(df_files_original, unique)[10]
```


# Top 10 location codes in terms of sample volumes

```
tail(sort(table(data.frame$location)),10)
```


#  Summarize one column
```
View(df_original[,"PerformanceEvaluation", drop = F])

table(df_original$PerformanceEvaluation)
```