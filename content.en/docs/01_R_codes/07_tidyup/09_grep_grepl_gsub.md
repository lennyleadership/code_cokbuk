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


# inclusive with grep 

```
grep("*GC.xls|\\$|2018 reports|Temp Stations 2020", list, invert=T, value = T)
```

grep works with data frame and list.  

with (invert=T, value = T) I will get all names  

without (invert=T, value = T) I will get all names


# exclusive with grepl
```
n <- which(!grepl("IH",unique(df$parameters))) # name exclusive “IH”
```

# gsub application
Use the following line to get from ` $METALS_ALL_Antimony (Sb)` to `Antimony (Sb)`.
```
gsub("\\$METALS_ALL_", "", names(df)[7:44])
```
 
Use the following lines to get from `Antimony (Sb)` to `Sb`
```
re <- "\\(([^()]+)\\)"
 
element_names <- gsub(re, "\\1", str_extract_all(colnames(df)[7:44], re))
```


# be mindful

https://blog.enterprisedna.co/grep-and-grepl-r-functions/

https://www.r-bloggers.com/2013/04/beware-of-grep-with-a-list/

This is one reason why R, great as it is for statistical programming, will never catch on outside the narrow community of those who work with it exclusively or are willing to devote an inordinate amount of energy to dealing with its unpredictable behavior. [https://stackoverflow.com/questions/7591632/why-this-behavior-when-coercing-a-list-to-character-via-as-character]



