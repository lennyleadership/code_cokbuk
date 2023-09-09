---
weight: 91
title: Print
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
series:
toc: true
---


<!--more-->

To retain color on the print.

```
body{
  -webkit-print-color-adjust:exact;
  print-color-adjust:exact;
}
```


To always begin with header 1.

```
@media print {
  h1 { 
    page-break-before: always;
  }
}
```

