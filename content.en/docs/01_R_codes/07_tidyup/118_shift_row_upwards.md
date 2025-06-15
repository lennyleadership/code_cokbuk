---
weight: 118
title: Shift A Row Upwards
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

```
shift <- function(x, n){
  c(x[-(seq(n))], rep(NA, n))
}
 
tbl_brine$regen_date <- shift(tbl_brine$regen_date, 1)
```