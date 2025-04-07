---
weight: 09
title: "grep grepl gsub"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-14"
lastmod: "2025-04-06"
series:
toc: true
---


<!--more-->

They can be used to replace a pattern, remove a pattern.


# grep with multiple patterns

```
grep("*GC.xls|\\$|2018 reports|Temp Stations 2020", list, invert=T, value = T)
```

grep works with data frame and list.  

with (invert=T, value = T) I will get all names  

without (invert=T, value = T) I will get all names (??)


```
patterns <- c("QDUP", "QSPK", "\\$")
 
grep(paste(patterns, collapse = "|"), names(df_stp_ch))
```

# grepl with multiple patterns

```
patterns <- c("A1", "A9", "A6")

>your_df
  FirstName Letter
1      Alex     A1
2      Alex     A6
3      Alex     A7
4       Bob     A1
5     Chris     A9
6     Chris     A6
 
result <- filter(your_df, grepl(paste(patterns, collapse="|"), Letter))
 
>result
  FirstName Letter
1      Alex     A1
2      Alex     A6
3       Bob     A1
4     Chris     A9
5     Chris     A6
 
https://stackoverflow.com/questions/7597559/grep-using-a-character-vector-with-multiple-patterns
```



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



