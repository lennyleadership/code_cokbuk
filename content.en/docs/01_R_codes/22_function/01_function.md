---
weight: 01
title: Function Showcases
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-05-31"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->

# Example #01 filter function

```
get_var <- function(data, column, value) {
  data %>% filter({{ column }} == value)
}
 
get_var(mtcars, cyl, 6)
```

Note: As of rlang 0.4.0 (2019-06-25) there is now the embrace operator `{{}}`. 

# Example #02 mutate function

```
mutate_steam_shutdown <- function(x){
  x |>
  mutate(group = case_when(
    date %in% steam_shutdown_date ~ "steam_shutdown",
    .default = "other"
  ))
}
```