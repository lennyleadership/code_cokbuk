---
weight: 03 
title: Explore the spreadsheet names
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2025-04-18"
lastmod: "2025-04-18"
series:
toc: true
---


<!--more-->

Explore the spreadsheet names in one excel file
```
readxl::excel_sheets(AEM_list_files_names[[1]])
```
 

Explore the spreadsheet names in multiple excel files

Option #1

```
z_sheetnames <- lapply(AEM_list_files_names, readxl::excel_sheets)
```

Option #2

```
for (i in 1: length(list)){
  matrix <- readxl::excel_sheets(list[[i]]) 
  z[[i]] <- matrix
  z[[i]]$file_names <- list_file_names[i]
}

```

I create a list of data.frame with this command 