---
weight: 103
title: Create an One Column Data Frame
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-06-15"
lastmod: "2025-06-15"
series:
toc: true
---


<!--more-->

Take one column from a dataset and create a new dataset of one column
```
z <- data.frame(time_stamp = A_rm163_3_original[,1])
```

Note:  It is handy to work with one column, then put manipulated column back to the original dataset.