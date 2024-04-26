---
weight: 72
title: Misc
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-25"
lastmod: "2024-04-25"
series:
toc: true
---


<!--more-->
---

# Compare columns in two datasets

When rbinding two datasets, number of columns must be matched.


## Solution #1

```
x1 <- list_names[[1]]
x2 <- list_names[[2]]
x3 <- list_names[[3]]
x4 <- list_names[[4]]
 
n <- max(length(x1),length(x2),length(x3),length(x4))
 
c(length(x1),length(x2),length(x3),length(x4))
 
length(x1) <- n # this is the key action
length(x2) <- n
length(x3) <- n
length(x4) <- n
 
y1 <- as.data.frame(x1)
y2 <- as.data.frame(x2)
y3 <- as.data.frame(x3)
y4 <- as.data.frame(x4)
 
names(y4) <- "names"
names(y3) <- "names"
names(y2) <- "names"
names(y1) <- "names"
 
y4$y4_names <- y4$names
y3$y3_names <- y3$names
y2$y2_names <- y2$names
y1$y1_names <- y1$names
 
z <- y4 |>
  left_join(y3, by = "names") |>
  left_join(y2, by = "names") |>
  left_join(y1, by = "names")
```

After that, I don't need to sort the order of columns.

reference:   
<a href = "https://stackoverflow.com/questions/3699405/how-to-cbind-or-rbind-different-lengths-vectors-without-repeating-the-elements-o" target="_blank" rel="noopener noreferrer">How to cbind or rbind different lengths vectors without repeating the elements of the shorter vectors?</a>


## Solution #2

```
library(arsenal)
setdiff(names(df_4), names(df_56))
```

# Move a column to the end of the dataset

```
df_6 |> select(-TKN, TKN)
```

