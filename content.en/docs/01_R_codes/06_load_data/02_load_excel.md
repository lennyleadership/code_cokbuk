---
weight: 02
title: "Load Excel file(s)"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-15"
lastmod: "2023-11-15"
series:
toc: true
---


<!--more-->
---

# Tips

I personally wouldn't use library(xlsx) (which I believe contains your read.xlsx) because it has a java dependency...

# Load one csv, xls, xlsx file

```
filename <- paste0(filepath, "/", "my filename", ".csv")

filename <- paste0(filepath, "/", "my filename", ".xls")

```

# Read one csv file

```
df <- read.csv(filename)

```

# Read one excel file
```
library(readxl)
 
read_excel("data/file_name.xls", col_names = F) [no header]
```

Skip first 22 rows, and do not take the first row as the header
 
```
library(readxl)
 
read_excel("data/Sampling and Analysis Checklist - Proposed & Agreed Changes for 2022 (2022-Apr-05).xlsx", 
                 sheet = "Sheet1", skip = 22, col_names = F)
```

Take certain range of data
```
library(readxl)
 
dt <- read_excel("C:/Users/.../MRAD_ALPHA_Investigation.xlsx", sheet = "Sheet2", range = "A4:j7", col_names = F) #[no header]
```



# Load multiple excel files

```
list_files <- list.files(filepath, pattern='*.xlsm$|*.xlsx$|*.xls$', full.names = T,  recursive = T, ignore.case = T)

```

`full.name = T`: file name will include file directory.

`recursive = T`: will drill down to subfolders

`$`: put it at the end to ensure xls is the file extension.  Some file may have xls in the file name.


# Load multiple excel files with partial-matched file namee

```
list_files <- list.files(filepath_import, pattern = "^stp_process.*\\.xlsx", full.names = T, recursive = FALSE)

```

Note: Load excel files of which the file name begins with stp_process. `^` means 'to begin with'. `.*\\` is the wild card.


# Vignette: Read Multiple Excel files with purr

```

# file source
wb_source <- "../datasets/test-excel/test-excel.xlsx"

```

```

# Extract the sheet names as a character string vector
wb_sheets <- readxl::excel_sheets(wb_source)

```

```

# Load everything into the Global Environment
wb_sheets %>%
  purrr::map(function(sheet){ # iterate through each sheet name
  assign(x = sheet,
         value = readxl::read_xlsx(path = wb_source, sheet = sheet),
         envir = .GlobalEnv)
})

```

## Read all sheets in Excel into a list

```

# Load everything into the Global Environment
wb_sheets %>%
  purrr::map(function(sheet){ # iterate through each sheet name
  readxl::read_xlsx(path = wb_source, sheet = sheet)
}) -> df_list_read # Assign to a list

```


```

df_list_read %>%
  map(~select(., Petal.Length, Species) %>%
        head())

```

## Read all csv files in directory into a list

```

# Load everything into the Global Environment
csv_file_names %>%
  purrr::map(function(file_name){ # iterate through each file name
  read_csv(paste0(file_path, file_name))
}) -> df_list_read2 # Assign to a list

```

Reference: <a href = "https://martinctc.github.io/blog/vignette-write-and-read-multiple-excel-files-with-purrr/" target="_blank" rel="noopener noreferrer">Vignette: Write & Read Multiple Excel files with purr</a>


