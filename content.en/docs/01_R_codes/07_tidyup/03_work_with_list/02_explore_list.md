---
weight: 02
title: Explore column names of each file in a List
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-06-15"
lastmod: "2025-06-15"
series:
toc: true
---


<!--more-->
```
###
## load data----
 
list_files <- list.files(path_import, pattern = ".csv", full.names = T, recursive = F)
 
list_files_short <- list.files(path_import, pattern = ".csv", full.names = F, recursive = F)
 
list_csv <- lapply(list_files, read.csv)
 
list_column_names <- lapply(list_csv, names)
 
list_names_numbers <- lapply(list_csv, length)
 
file_info <- tibble("file_names" = list_files_short,
                    "column_names" = list_column_names,
                    "number_columns" = as.numeric(list_names_numbers))
 
 
### 
## create a dataset of column names of all files ----

list_file_colnames <- list()
 
for (i in 1: length(list_column_names) ){
  tbl <- tibble("col_names" = list_column_names[[i]],
                "file_names" = list_column_names[[i]] )
  names(tbl) <- c("col_names", list_filesnames[[i]])
  list_file_colnames[[i]] <- tbl
}
 
df_colnames_inf_eff <- purrr::reduce(list_file_colnames, dplyr::full_join, by = 'col_names')
 
 
###
## add new columns to file which misses columns ----
 
tbl_1 <- tibble(list_files_xslx[[1]])
tbl_1[df_colnames_inf_eff$col_names[42:55]] <- NA
 
 
tbl_2 <- tibble(list_files_xslx[[2]])
tbl_2[df_colnames_inf_eff$col_names[c(8:19, 43:55)]] <- NA
 
 
tbl_3 <- tibble(list_files_xslx[[3]])
tbl_3[df_colnames_inf_eff$col_names[c(8:19)]] <- NA
 
 
tbl_4 <- tibble(list_files_xslx[[4]])
tbl_4[df_colnames_inf_eff$col_names[c(8:19)]] <- NA
```