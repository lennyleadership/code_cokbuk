---
weight: 106
title: Work With NA
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-19"
lastmod: "2023-11-19"
series:
toc: true
---


<!--more-->
---

# Remove empty rows and columns at one time
``` 
library(janitor) # remove_empty comes from this package

remove_empty(df, c("rows", "cols"))
``` 


# filter na from multiple columns
Using dplyr, you can also use the filter_at function

```
library(dplyr)
df_non_na <- df %>% filter_at(vars(type,company),all_vars(!is.na(.)))
```

`all_vars(!is.na(.))` means that all the variables listed need to be not NA.

If you want to keep rows that have at least one value, you could do:

```
df_non_na <- df %>% filter_at(vars(type,company),any_vars(!is.na(.)))
```



# count number of na in columns of a dataset

```
colSums(is.na(df))

colSums(is.na(df[,7:22]))
```

# count number of na in rows of a dataset

```
rowSums(is.na(df))

rowSums(is.na(df[1:nrow(df),]))
```


# sapply
```
allmisscols <- sapply(dt, function(x) all(is.na(x) | x == '' ))
```


# Remove empty columns in rows

Situation: There are rows having NA in each column.

Goal: remove empty columns

```

df[rowSums(is.na(df[,7:15])) != ncol(df[,7:15]), ]


```


Reference: <a href = "https://www.r-bloggers.com/2021/06/remove-rows-that-contain-all-na-or-certain-columns-in-r/" target="_blank" rel="noopener noreferrer">R Bloggers | Remove rows that contain all NA or certain columns in R</a>


