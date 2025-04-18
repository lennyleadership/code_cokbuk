---
weight: 04
title: Case 04 Empty Data Frame
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2025-04-06"
lastmod: "2025-04-06"
series:
toc: true
---


<!--more-->

```
z_df <- data.frame(year = rep("", nrow(z)),
                  week_of_year = rep("", nrow(z)))

```



To create a dataset, have a list in one column for each row.

```
library(tidyverse)

set.seed(1234) #win-10 OS

a <- list(runif(100))
b <- list(runif(99))
c <- list(runif(98))
d <- list(runif(97))

Column_Asked <- c(a,b,c,d)

df_reprex <- tibble::tibble(Column_Asked)

purrr::pluck(df_reprex$Column_Asked,1)[1] # gives 0.1137

purrr::pluck(df_reprex$Column_Asked,2)[1] # gives 0.03545673

obj1 <- list("a", list(1, elt = "foo"))

obj2 <- list("b", list(2, elt = "bar"))

x <- list(obj1, obj2)

pluck(x,1)
```