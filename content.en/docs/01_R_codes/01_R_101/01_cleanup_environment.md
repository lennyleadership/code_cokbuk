---
weight: 01
title: Cleanup Environment
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
---

to remove data frame beginning with.

```
rm(list = ls()[grepl("df",ls())])
```