---
weight: 05
title: Remove Characters
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-19"
lastmod: "2023-11-19"
series:
toc: true
---


<!--more-->
---

Remove character with $ at the front: 

```
new_name <- gsub("\\$ICPMS-GWMP_", "", [character array])
```