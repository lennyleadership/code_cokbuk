---
weight: 01
title: Function Cases
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-05-31"
lastmod: "2024-05-31"
series:
toc: true
---


<!--more-->

# Case #1

```
get_var <- function(data, column, value) {
  data %>% filter({{ column }} == value)
}
 
get_var(mtcars, cyl, 6)
```

Note: As of rlang 0.4.0 (2019-06-25) there is now the embrace operator `{{}}`. 

