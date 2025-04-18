---
weight: 02
title: Change the structure of columns in a list
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

To change the structure of columns in a list
```
list_files_original <- lapply(list_files_original, function(df) mutate_at(df, .vars = 1:58, as.character))
```