---
weight: 01
title: Search PDF
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-10-04"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->

```
library(pdf)

filepath <- r"(K:\...\PDF)"

list_files <- list.files(filepath, pattern = ".pdf", full.names = T, recursive = F)
 
list_files_short <- list.files(filepath, pattern = ".pdf", full.names = F, recursive = F)
 
list_pdf <- lapply(list_files, pdf_text)

list_reports <- list()
 
for (i in 1 : length(list_pdf) ) {
  file_name <- list_files_short[[i]]
  matrix <- str_extract_all(list_pdf[i], boundary("word"))
  list_temp <- data.frame(file_name, matrix)
  list_reports[[i]] <- list_temp
}
 
df_reports <- do.call(rbind, list_reports)
```

