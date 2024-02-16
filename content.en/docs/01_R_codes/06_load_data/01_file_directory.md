---
weight: 01
title: Work with File Directory
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

# Option 1
```
filepath <- r"(paste the directory here)"
```


# Option 2

note
```
filepath<-gsub("\\\\",  "/",  readClipboard()) 
filename <- paste0(filepath, "/", "my filename", ".csv")
df_01 <- read.csv(filename) <label for="note" class="margin-toggle sidenote-number"></label><span class="sidenote"># explain ----
<br>Step #01: go to the window explorer, copy the file directory
<br>filepath<-gsub("\\\\",  "/",  readClipboard()) 
<br>
<br>Step #02: go the window explorer, copy the file name
<br>filename <- paste0(filepath, "/", "BoxplotStat_C_DIS", ".csv")
<br>
<br>Step #03: deploy read.csv()
<br>df_01 <- read.csv(filename)</span>

# explain ----
Step #01: go to the window explorer, copy the file directory
filepath<-gsub("\\\\",  "/",  readClipboard()) 

Step #02: go the window explorer, copy the file name
filename <- paste0(filepath, "/", "BoxplotStat_C_DIS", ".csv")

Step #03: deploy read.csv()
df_01 <- read.csv(filename)
```