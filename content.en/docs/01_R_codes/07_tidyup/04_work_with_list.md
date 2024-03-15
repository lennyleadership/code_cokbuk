---
weight: 04
title: Create a List
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-11-15"
lastmod: "2024-03-14"
series:
toc: true
---


<!--more-->

####
###
##
# Create a list case #1----
Extract information, put them in a list of data frames.  
give row number.

```

a_list = list()

n = 1
for (i in 1: length(blank_list_pwiz)){
  for (j in 1: lengths(blank_list_pwiz[1])){
    sample_name <- basename(fileName(blank_list_pwiz[[i]]))
    rt <- header(blank_list_pwiz[[i]])[,c("retentionTime")][j]
    tic <- header(blank_list_pwiz[[i]])[,c("totIonCurrent")][j]
    bpc <- header(blank_list_pwiz[[i]])[,c("basePeakIntensity")][j]
    list_temp <- data.frame(sample_name, rt, tic, bpc)
    list_temp$n<-n
    b_list[[n]] <- list_temp
    n=n+1
  }
  n = n+1
}

blank_df_raw <- do.call(rbind, a_list)

a_list <- list()

list_temp <- data.frame()
```

####
###
##
# Create a list case #2 ----
Extract information, put them in a list of data frames.  
list [[i]]$file_names[1] determines the number of rows.

```

for (i in 1:length(list)){
  count_time_alpha <- list [[i]]$Alpha[1]
  ref_date_alpha <- list [[i]]$Alpha[2]
  ref_activity_alpha <- list [[i]]$Alpha[3]
  ref_unc_alpha <- list [[i]]$Alpha[4]
  half_life_alpha <- list [[i]]$Alpha[5]
  file_name <- list [[i]]$file_names[1]
  
  source_alpha[[i]] <- data.frame(count_time_alpha,ref_date_alpha,ref_activity_alpha,ref_unc_alpha,half_life_alpha,file_name)

# I parse cell info from excel files in a list, then make a list by merging all contents together

```


####
###
##
# Create a list case #3 ----
Read the excel files, put one excel file info in one data frame in the list.

```

for (i in 1: length(list)){
  matrix <- excel_sheets(list[[i]]) # excel_sheets() gets sheet names
  z[[i]] <- matrix
  z[[i]]$file_names <- list_file_names[i]
}

# I create a list of data.frame with this command 

```


####
###
##
# lapply and FUN application to a list ----

```

list _2 <- lapply(list_1, FUN = function(t) gsub("search", "", x = t, fixed = T))

```

####
###
##
# filter out ----

```

grep("*GC.xls|\\$|2018 reports|Temp Stations 2020", list, invert=T, value = T)

```

grep works with data frame and list.  

with (invert=T, value = T) I will get all names  

without (invert=T, value = T) I will get all names



####
###
##
# turn list to dataset

```

df <- as.data.frame(do.call(cbind, list))

df <- as.data.frame(do.call(rbind, list))

```
