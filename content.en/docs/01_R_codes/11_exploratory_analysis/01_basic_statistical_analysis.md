---
weight: 01
title: Basic statistical analysis
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

```
df %>%
  group_by(column) %>%
  summarize(mean =round(mean(value),0), sd = round(sd(value),0))
```