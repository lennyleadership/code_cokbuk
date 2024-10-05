---
weight: 18
title: Move a column to the left
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