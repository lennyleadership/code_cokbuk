---
weight: 01
title: "Load Excel file(s)"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-15"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->


# Tips

I personally wouldn't use library(xlsx) (which I believe contains your read.xlsx) because it has a java dependency...


# Load one csv, xls, xlsx file

```
filename <- paste0(filepath, "/", "my filename", ".csv")

filename <- paste0(filepath, "/", "my filename", ".xls")

```


# Libraries

readxl can read xls and xlsx files.



# Read one csv file

```
library(readxl)

df <- read.csv(filename)
```

```
library(readr)

read_csv()
```


# Read one excel file

## Case #1: There is no row of header

```
library(readxl)
 
read_excel("data/file_name.xls", col_names = F) [no header]
```

## Case #2: Skip some rows, and take everything after them

```
library(readxl)
 
read_excel("data/Sampling and Analysis Checklist - Proposed & Agreed Changes for 2022 (2022-Apr-05).xlsx", 
                 sheet = "Sheet1", skip = 22, col_names = F)
```

<ol>Note:
<li>Read data on "Sheet1",</li>
<li>Skip first 22 rows,</li>
<li>Do not take the first row as the header.</li>
</ol>

## Case #3: Take certain range of data

```
library(readxl)
 
dt <- read_excel("C:/Users/.../MRAD_ALPHA_Investigation.xlsx", sheet = "Sheet2", range = "A4:j7", col_names = F)
```

<ol>Note:
<li>Read data on "Sheet2",</li>
<li>Use `range` to define the area of data,</li>
<li>Do not take the first row as the header.</li>
</ol>


