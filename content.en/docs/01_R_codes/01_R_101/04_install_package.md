---
weight: 04
title: To Install Packages
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2024"
lastmod: "2024"
series:
toc: true
---


<!--more-->

# option #1
```
install.packages("pak")
pak::pak('jhelvy/renderthis')
```

# option #2
```
library(devtools)
devtools::install_github("jhelvy/renderthis")
```