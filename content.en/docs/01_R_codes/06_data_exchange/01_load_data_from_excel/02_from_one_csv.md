---
weight: 2
title: From One csv File
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-09"
lastmod: "2023-11-15"
series:
toc: true
---


<!--more-->
---


No colname or don’t want column names:
```
 read.csv(…, header = F)
```

# best ----
```
df_01 <- read.csv(file.choose())
```

# option 1 ----
```
filepath <- r"(paste the directory here)"
filename <- paste0(filepath, "/", "my filename", ".csv")
df_01 <- read.csv(filename)
```

# option 2 ----

```
filepath<-gsub("\\\\",  "/",  readClipboard()) 
filename <- paste0(filepath, "/", "my filename", ".csv")
df_01 <- read.csv(filename)

# explain ----
Step #01: go to the window explorer, copy the file directory
filepath<-gsub("\\\\",  "/",  readClipboard()) 

Step #02: go the window explorer, copy the file name
filename <- paste0(filepath, "/", "BoxplotStat_C_DIS", ".csv")

Step #03: deploy read.csv()
df_01 <- read.csv(filename)
```