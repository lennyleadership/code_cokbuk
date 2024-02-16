---
weight: 06
title: Sorting
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

# sort by groups

```
df <- df%>%
  arrange(desc(conc)) %>%
  group_by(elements)
```

# sort by groups, then list top 10

```
df <- df%>%
  arrange(desc(conc)) %>%
  group_by(elements) %>%
  slice(1:10)
```