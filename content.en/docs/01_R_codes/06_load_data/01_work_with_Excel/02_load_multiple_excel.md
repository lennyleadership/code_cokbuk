---
weight: 02
title: Load Multiple Excel Files
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

# Tip
readr::read_csv can take a list with one condition, which is: the number of columns must be the same.

Case: create BKG and EFF data frames in 2025
``` 
A_2025_bkg_org <- readr::read_csv(list_files_bkg_2025, id = "origin_file")
 
A_2025_eff_org <- readr::read_csv(list_files_eff_2025, id = "origin_file")
```

# Step One: Make a list of files

## case #1
```
list_files <- list.files(filepath, pattern='*.xlsm$|*.xlsx$|*.xls$', full.names = T,  recursive = T, ignore.case = T)
```
Note of wild card:  
`$` means 'to end with' to ensure xls is the file extension, because some file may have xls in the file name.   
`*` means everything.


## case #2
```
list_files <- list.files(filepath_import, pattern = "^stp_process.*\\.xlsx", full.names = T, recursive = FALSE)
```
Note of wild card:   
Load excel files of which the file name begins with stp_process. `^` means 'to begin with'. `.*\\` means everything followed.  


## case #3
```
file_name <- list.files(import_data_folder, pattern = "^edms_res.*_25.06.04.csv$", full.names = T, recursive = F)
``` 
Note of wild card:   
to search csv files beginning with `edms_res` and ending with `_25.06.04`. Two sections were connected with a wildcard `.*`.


Note:  
(1) `full.name = T`: file name will include file directory  
(2) `recursive = T`: will drill down to subfolders




# Setp Two: Read files into a list

## Read from one sheet in multiple excel files
```
z_anions2024_stds <- list()

for (i in 1:length(file_names) ){
  file_name <- file_names_short[[i]]
  timestamp <- readxl::read_excel(file_names[[i]], sheet = "Integration", range = "C6", col_types = "date", col_names = F)
  data <- readxl::read_excel(file_names[[i]], sheet = "Integration", range = "B11:G17", col_names = F)
  z_anions2024_stds[[i]] <- data.frame(file_name, timestamp, data)
}

```

<ol>Note:
<li>Extract data from multiple tables in a spreadsheet in multiple Excel files,</li>
<li>Pick up data from multiple places.</li>
</ol>


## Read multiple tables in one sheets from multiple files

```
z_anions2024_stds <- list()

for (i in 1:length(file_names) ){
  file_name <- file_names_short[[i]]
  timestamp <- readxl::read_excel(file_names[[i]], sheet = "Integration", range = "C6", col_types = "date", col_names = F)
  data <- readxl::read_excel(file_names[[i]], sheet = "Integration", range = "B11:G17", col_names = F)
  z_anions2024_stds[[i]] <- data.frame(file_name, timestamp, data)
}

```

<ol>Note:
<li>Define data type `col_types = "date"`</li>
<li>Define range `range = "B11:G17"`</li>
</ol>



## Read multiple spreadsheets in multiple excel files

Note: there must be header line on each spreadsheet

```
path_import <- r"()"
 
file_name <- paste0(path_import, "/","file_name",".xlsx")

multiplesheets <- function(filename) {
  sheets <- readxl::excel_sheets(filename)
  z1 <- lapply(sheets, function(x) readxl::read_excel(filename, sheet = x))
  z2 <- do.call(rbind, z1)
}

list_SW_GAB_original <- lapply(list_files, multiplesheets)
``` 



# Read multiple Sheets in one Excel file with library `purr`

```
# file source
wb_source <- "../datasets/test-excel/test-excel.xlsx"


# Extract the sheet names as a character string vector
wb_sheets <- readxl::excel_sheets(wb_source)


# Load everything into the Global Environment
wb_sheets %>%
  purrr::map(function(sheet){ # iterate through each sheet name
  assign(x = sheet,
         value = readxl::read_xlsx(path = wb_source, sheet = sheet),
         envir = .GlobalEnv)
})

# Load everything into the Global Environment
wb_sheets %>%
  purrr::map(function(sheet){ # iterate through each sheet name
  readxl::read_xlsx(path = wb_source, sheet = sheet)
}) -> df_list_read # Assign to a list


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


```
# multiple files ----

A_list_xlsx <- list.files(path_import, pattern = "evmp ch wef 2024*", full.names = T, 
                         recursive = FALSE) # T means the file directory is included.

A_list_xlsx_names <- list.files(path_import, pattern = "evmp ch wef 2024*", full.names = F, 
                         recursive = FALSE) # T means the file directory is included.

# read xlsx, and skip the first two rows ----

z_list <- list()

for (i in 1:length(A_list_xlsx) ){
  file_name <- A_list_xlsx_names[[i]]
  xlsx_file <- readxl::read_excel(A_list_xlsx[[i]], sheet = "TestResults_v1", skip = 2, col_names = F)
  z_list[[i]] <- data.frame(xlsx_file, file_name)
}

A_EDD <- do.call(rbind, z_list)


# get the header names ----

z_header <- readxl::read_excel(A_list_xlsx[[1]], sheet = "TestResults_v1", col_names = T)

names(A_EDD)[1:58] <- names(z_header)
```