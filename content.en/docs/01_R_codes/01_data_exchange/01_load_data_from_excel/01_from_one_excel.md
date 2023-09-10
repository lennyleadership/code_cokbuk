---
weight: 1
title: From One Excel File
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
series:
toc: true
---


<!--more-->
---

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