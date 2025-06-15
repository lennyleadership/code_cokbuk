---
weight: 18
title: Move columns within a data frame
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-10-04"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->

Move one column to the front

```
df |> select(date, everything())
```


Use select from the dplyr package and its everything() function to move specific columns to the start or end of a data.frame.

 

Move to the beginning:

```
df |>
  dplyr::select(g, everything())
```
 

Move to the end:

```
df |>
  dplyr::select(-a, everything())
```

Or `dplyr::select(df, g, everything())` and `dplyr::select(df, -a, everything())` respectively.


move "TKN" to the end in df_6 

```
df_6 |> select(-TKN, TKN)

```