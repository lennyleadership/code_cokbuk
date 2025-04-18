---
weight: 18
title: Move A Column to The End
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-20"
lastmod: "2024-04-20"
series:
toc: true
---


<!--more-->
---
move "TKN" to the end in df_6 

```
df_6 |> select(-TKN, TKN)

```