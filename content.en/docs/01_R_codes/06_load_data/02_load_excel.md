---
weight: 02
title: "Load Excel file(s)"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-15"
lastmod: "2023-11-15"
series:
toc: true
---


<!--more-->
---

# Load One file

```
Get the file name:

filename <- paste0(filepath, "/", "my filename", ".csv")

filename <- paste0(filepath, "/", "my filename", ".xls")
```

## Read one file in general

```
df <- read.csv(filename)

df <- read.csv(file.choose())

```


## Situtation #1: No colname or don’t want column names:
```
 read.csv(…, header = F)
```

## Situtation #2: Skip rows at the beginning

```
library(readxl)

dt <- read_excel("file directory/sub_folder/file_name.xlsx",
                sheet ="Sheet2 (2)", skip = 5, col_names = F)
```


## Situtation #3: Certain range

Step #1: Get the data from a specific range.  

```
library(readxl)

dt <- read_excel("file directory/sub_folder/file_name.xlsx",
                sheet ="Sheet2 (2)", range = "A2:N63", col_names = F)

```

Step #2: Get the header from the table.

```
col_title <- read_excel("file directory/sub_folder/file_name.xlsx",
                sheet ="Sheet2 (2)", range = "A1:N1", col_names = F)
                
```

# Load multiple files
```
library(readr)

filepath <- r"(file directory)"

list_files <- list.files(filepath, full.names = T,  
                         recursive = FALSE) # T means the file directory is included.

list_files_1 <- list_files[-32]

df_original <- read_csv(list_files_1,id = "origin_file")
```
