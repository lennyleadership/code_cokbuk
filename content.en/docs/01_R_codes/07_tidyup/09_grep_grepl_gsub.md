---
weight: 09
title: "grep grepl gsub"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-14"
lastmod: "2024-03-14"
series:
toc: true
---


<!--more-->
---

####
###
##
# filter out ----

```

grep("*GC.xls|\\$|2018 reports|Temp Stations 2020", list, invert=T, value = T)


```

grep works with data frame and list.  

with (invert=T, value = T) I will get all names  

without (invert=T, value = T) I will get all names


#### 
###
##
# file starting with “~$emxxx.xls” ----
grep("\\$", list)
