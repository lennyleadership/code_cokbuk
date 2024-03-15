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

# Load one csv, xls, xlsx file

```
filename <- paste0(filepath, "/", "my filename", ".csv")

filename <- paste0(filepath, "/", "my filename", ".xls")

```

# Read one csv file

```

df <- read.csv(filename)

```


# Load multiple excel files

```

list_files <- list.files(filepath, pattern='*.xlsm$|*.xlsx$|*.xls$', full.names = T,  recursive = T)

```

`full.name = T`: file name will include file directory.

`recursive = T`: will drill down to subfolders

`$`: put it at the end to ensure xls is the file extension.  Some file may have xls in the file name.
