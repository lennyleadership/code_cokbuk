---
weight: 05
title: Parse characters separated by `,`
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
readLines(filename)[2]
output: "Year, Month, Cal-Day, Hour, Minute, Second, Julian Decimal-Day,  Temp_0, Temp_30, Temp_60, WindDir_0, WindDir_30, WindDir_60, WindSpeed_0, WindSpeed_30, WindSpeed_60, Humidity, Ambient Pressure"
 
z <- readLines(filename)[2]
 
unlist(strsplit(z, split = ", "))
```