---
weight: 01
title: Load Single Excel File
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


# Load one sheet in a csv, xls, xlsx file

## Libraries

readxl can read xls and xlsx files.


## Step One: Read the file name
```
filename <- paste0(filepath, "/", "my filename", ".csv")

filename <- paste0(filepath, "/", "my filename", ".xls")

```

## Step Two: Read data into a data frame

### Read one csv file

```
library(readxl)

df <- read.csv(filename)
```

```
library(readr)

read_csv()
```


### Read one sheet in one excel file

Note: We don't define the sheet name.

Case #1: There is no row of header

```
library(readxl)
 
read_excel("data/file_name.xls", col_names = F) [no header]
```

Case #2: Skip some rows, and take everything after them

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


Case #3: Take certain range of data

```
library(readxl)
 
dt <- read_excel("C:/Users/.../MRAD_ALPHA_Investigation.xlsx", sheet = "Sheet2", range = "A4:j7", col_names = F)
```

<ol>Note:
<li>Read data on "Sheet2",</li>
<li>Use `range` to define the area of data,</li>
<li>Do not take the first row as the header.</li>
</ol>


### Read multiple spreadsheets in one excel files

Note: there must be header line on each spreadsheet

Option #1

``` 
path_import <- r"()"
 
file_name <- paste0(path_import, "/","file_name",".xlsx")

multiplesheets <- function(filename) {
  sheets <- readxl::excel_sheets(filename)
  z1 <- lapply(sheets, function(x) readxl::read_excel(filename, sheet = x))
  z2 <- do.call(rbind, z1)
}
 
file_original <- multiplesheets(file_name)
```

Option #2

```
multiplesheets <- function(fname) {
  # getting info about all excel sheets
  sheets <- readxl::excel_sheets(fname)
  tibble <- lapply(sheets, function(x) readxl::read_excel(fname, sheet = x))
  data_frame <- lapply(tibble, as.data.frame)
 
  # assigning names to data frames
  names(data_frame) <- sheets
 
  # print data frame
   print(data_frame)
}
 
df <- multiplesheets(file_name)
 
file_original <- do.call(rbind, df)
```


Option #3


Get sheet name with `sheet = excel_sheets(file_name)`


```
z <- list()
 
for (i in 1:length(sheet)){
  z[[i]] <- read_excel(filename, sheet = sheet[i])
  # include the following lines due to
  z[[i]]$`$ALPHA_LIQ_RAW_Count Date` <- as.Date.POSIXct(as.numeric(z[[i]]$`$ALPHA_LIQ_RAW_Count Date`))
  z[[i]]$`$BETA_LIQ_RAW_Count Date` <- as.Date.POSIXct(as.numeric(z[[i]]$`$BETA_LIQ_RAW_Count Date`))
}
 
z1 <- do.call(rbind, z)
```