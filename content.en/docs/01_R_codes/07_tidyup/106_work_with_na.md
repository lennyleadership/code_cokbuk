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



