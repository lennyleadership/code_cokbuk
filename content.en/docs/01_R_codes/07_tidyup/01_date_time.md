---
weight: 01
title: Work with Date and Time
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-02-15"
lastmod: "2024-02-15"
series:
toc: true
---


<!--more-->
---

#  turn character into date and time

use parse_date_time()

```
"12/11/2004 12:00:00 AM"

df_1$date <- as.Date(parse_date_time(df_1$AnalysisDate, "%m/%d/%y %I:%M:%S %p"))

outcome “2004-12-11”
```
