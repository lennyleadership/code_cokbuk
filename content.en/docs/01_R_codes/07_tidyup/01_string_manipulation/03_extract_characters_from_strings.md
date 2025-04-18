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

Case: ` $METALS_ALL_Antimony (Sb)`  
Output: `Antimony (Sb)`

```
gsub("\\$METALS_ALL_", "", names(df)[7:44])
```


# Extract characters in bracket ()
Case: `Antimony (Sb)`  
Output: `Sb`

```
re <- "\\(([^()]+)\\)"
 
element_names <- gsub(re, "\\1", str_extract_all(colnames(df)[7:44], re))
```


# Split by pattern and then select character at a specific location

Case: `EMP_ESW_RA-W_240123_N`  
Extract: `N`    

```
stringr::str_split_i(B_file$`#sys_sample_code`[1], "_", 5)
```


# Substract the text after a symbol

Case: `EMP_ESW_RA-W_240123_N`  
Extract: `N`    

```
sub(".*_","",EMP_ESW_RA-W_240123_N)
```
