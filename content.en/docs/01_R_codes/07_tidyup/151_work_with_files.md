---
weight: 151
title: Work With Files
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

Rename file names of multiple files.

```
folder_path <- r"(../BV_PDF_reports/from_sharedarea)"

list_filenames <- list.files(folder_path, pattern = [file://d+_C]\\d+_C, full.names = T, recursive = F)

list_newfilenames <- sub(pattern = [file://d+_C]\\d+_C, replacement = "C", x = list_filenames)

file.rename(list_filenames,  list_newfilenames)
```

Case:  
Output:  