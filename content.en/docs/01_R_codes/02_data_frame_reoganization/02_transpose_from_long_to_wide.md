---
weight: 99
title: To Transpose From Long to Wide
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
series:
toc: true
---


<!--more-->
---

Use `pivot_longer()`

```
pivot_longer(data.frame, cols = 3:6, names_to = "category name", values_to = "conc")
```