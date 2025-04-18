---
weight: 03
title: Extract Characters from Strings
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


# Remove characters with $ at the front

case: ` $METALS_ALL_Antimony (Sb)`  
output: `Antimony (Sb)`

```
gsub("\\$METALS_ALL_", "", names(df)[7:44])
```


# Extract characters in bracket ()
case: `Antimony (Sb)`  
output: `Sb`
```
re <- "\\(([^()]+)\\)"
 
element_names <- gsub(re, "\\1", str_extract_all(colnames(df)[7:44], re))
```
