---
weight: 03
title: "Convert .xml files to One Dataframe"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-"
lastmod: "2024-"
series:
toc: true
---


<!--more-->
---

# Convert multiple xml files

```
df_list <- lapply(list_files, xml_to_df, records.tags = "Table1", fields = "tags")
```