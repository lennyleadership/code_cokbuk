---
weight: 03
title: Get the List of Installed Packages
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-03-06"
lastmod: "2025-03-06"
series:
toc: true
---




```
x <- installed.packages(); x[ is.na(x[,"Priority"]), c("Package", "Version")]
```

Reference: <a href = "https://stackoverflow.com/questions/38481980/get-the-list-of-installed-packages-by-user-in-r" target="_blank" rel="noopener noreferrer">Get the list of installed packages by user in R</a>