---
weight: 05
title: Parse characters separated by `,`
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-04-18"
lastmod: "2025-04-18"
series:
toc: true
---


<!--more-->

# Parse by pattern

```
stringr::str_split(“EMP_ESW_RA-W_240123_N”, "_")
```
 
case: EMP_ESW_RA-W_240123_N  
output:  

```
[[1]]  
[1] "EMP"    "ESW"    "RA-W"   "240123" "N"
```

<ol>
<li>`stringr::str_split` does not work with one column of the dataset.</li>
<li>`stringr::str_split_i` is the one that can work with one column of the dataset.</li>
</ol>
 
 
# Parse

```
readLines(filename)[2]
output: "Year, Month, Cal-Day, Hour, Minute, Second, Julian Decimal-Day,  Temp_0, Temp_30, Temp_60, WindDir_0, WindDir_30, WindDir_60, WindSpeed_0, WindSpeed_30, WindSpeed_60, Humidity, Ambient Pressure"
 
z <- readLines(filename)[2]
 
unlist(strsplit(z, split = ", "))
```

# Parse

Case: `B100-FAN100MAIN_BUBBLER_231004`

Step #1: Parse pieces

```
AEM_B_files_info$x <- stringr::str_split(AEM_B_files_info$sys_loc_code, "-")
```
Note: With `stringr::str_split`, the output is a list-column.
 

Step #2: extract the first element.

A dataframe has one column, each row is an arbitrary list. I want the first element of each list.

```
AEM_B_files_info <- AEM_B_files_info  |>
  rowwise() |>
  mutate(builing = x[[1]])
```