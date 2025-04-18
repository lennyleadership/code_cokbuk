---
weight: 22
title: Sort Components with `factor()`
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-04-05"
lastmod: "2025-04-05"
series:
toc: true
---


<!--more-->

```
D_labqc2024$anions <- factor(D_labqc2024$anions,
                             levels = c("Fluoride","Chloride","Nitrite","Bromide","Nitrate","Phosphate","Sulphate"))
```

Note:  The advantage of setting the column to factor is that the order of component is set, they won't be set by the order of alphabets.