---
weight: 120
title: purrr application
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

# combine columns

```
# create a dataset of column names of all files ----
list_file_colnames <- list()
 
for (i in 1: length(list_column_names) ){
  tbl <- tibble("col_names" = list_column_names[[i]],
                "file_names" = list_column_names[[i]] )
  names(tbl) <- c("col_names", list_filesnames[[i]])
  list_file_colnames[[i]] <- tbl
}
 
 
df_colnames_inf_eff <- purrr::reduce(list_file_colnames, dplyr::full_join, by = 'col_names')

```