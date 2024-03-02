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
```
filepath<-gsub("\\\\",  "/",  readClipboard()) 

```
Note:  
<br>Step #01: go to the window explorer, copy the file directory
<br>filepath<-gsub("\\\\",  "/",  readClipboard()) 
<br>
<br>Step #02: go the window explorer, copy the file name
<br>filename <- paste0(filepath, "/", "filename", ".csv")