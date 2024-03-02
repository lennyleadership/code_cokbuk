---
weight: 04
title: "Load .rda"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-01"
lastmod: "2024-03-01"
series:
toc: true
---


<!--more-->
---

# multiple .rda files
```
path<- "mydata/" # where your data is

file_list <- list.files(path) # list of file names
file_list <- paste0(path,file_list) #adding to the file name, the path to get it

#loading files
for (i in 1:length(file_list)){
  load(file_list[i])
}

# or
library(purrr)

walk(file_list, ~ load(.x, .GlobalEnv))
```