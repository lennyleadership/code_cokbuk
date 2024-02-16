---
weight: 05
title: Work With Strings
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

# Extract string before a sign
```
sub("\\+/-.*","","0.10 +/- 0.04")

```
outcome: 0.10 (space)


# Remove character with $ at the front

```
new_name <- gsub("\\$ICPMS-GWMP_", "", [character array])
```