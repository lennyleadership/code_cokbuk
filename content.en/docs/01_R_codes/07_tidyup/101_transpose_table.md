---
weight: 101
title: Transpose Table
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2025-03-06"
series:
toc: true
---

# To transpose entire table

```
table_1 <- reshape2::melt(df, id.vars = "sample_id")

table_2 <- pivot_wide(table_1, names_from = "sample_id", values_from = "value")
```

# To transpose a table from wide to long

Use `pivot_longer()`

```
pivot_longer(data.frame, cols = 3:6, names_to = "category name", values_to = "conc")
```



