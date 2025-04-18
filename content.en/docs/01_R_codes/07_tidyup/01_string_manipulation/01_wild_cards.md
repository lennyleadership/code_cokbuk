---
weight: 01
title: Wild Cards
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-04-17"
lastmod: "2025-04-17"
series:
toc: true
---


<!--more-->

# Wild card `^`
It indicates the following letter is the first letter of the string.


# Wild card `.*`
The example is `^stp_process.*\\.xlsx`


# Wild card `$`

```
list_files <- list.files(filepath, pattern='*.xlsm$|*.xlsx$|*.xls$', ...)
```

<ol>Note:
<li>`$`: put it at the end to ensure xls is the file extension, because some file may have xls in the file name.</li>
</ol>


# Wild card `\\`
Add it before `.`.  The example is: `^stp_process.*\\.xlsx`

Add it before `$` because `$` is a wild card.  The example is: `\\$ICPMS-GWMP_`

Pattern: number at the front
`pattern =” [file://d+C]\\d+C”`