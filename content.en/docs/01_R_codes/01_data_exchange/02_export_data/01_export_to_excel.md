---
weight: 1
title: Export to One Excel File
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
dest.filepath <- r"( )"

write.csv(df_01, file = paste0(dest.filepath, "/", ".csv"))
```