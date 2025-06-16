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

Case #1: Explore the spreadsheet names in one excel file
```
readxl::excel_sheets(AEM_list_files_names[[1]])
```
 

Case #2: Explore the spreadsheet names in multiple excel files

```
z_sheetnames <- lapply(AEM_list_files_names, readxl::excel_sheets)
```

Case #3: Explore the spreadsheet names in multiple excel files
```
z_list_sheets <- list()
 
for (i in 1:length(file_names) ){
  file_name <- file_names_short[[i]]
  sheets <-readxl::excel_sheets(file_names[[i]])
  z_list_sheets[[i]] <- data.frame(sheets, file_name)
}
 
A_sheets <- do.call(rbind, z_list_sheets)

```


Case #4: Explore the spreadsheet names in multiple excel files

```
for (i in 1: length(list)){
  matrix <- readxl::excel_sheets(list[[i]]) 
  z[[i]] <- matrix
  z[[i]]$file_names <- list_file_names[i]
}

```

Note: I create a list of data.frame with this command 