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

# Step One: Make a list of files

```
list_files <- list.files(filepath, pattern='*.xlsm$|*.xlsx$|*.xls$', full.names = T,  recursive = T, ignore.case = T)
```

<ol>Note:
<li>`full.name = T`: file name will include file directory,</li>
<li>`recursive = T`: will drill down to subfolders,</li>
<li>`$`: put it at the end to ensure xls is the file extension, because some file may have xls in the file name.</li>
</ol>


```
list_files <- list.files(filepath_import, pattern = "^stp_process.*\\.xlsx", full.names = T, recursive = FALSE)
```

Note: Load excel files of which the file name begins with stp_process. `^` means 'to begin with'. `.*\\` is the wild card.


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


