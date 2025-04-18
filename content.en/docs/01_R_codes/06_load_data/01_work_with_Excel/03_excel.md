---
weight: 03 
title: Explore the spreadsheet names
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2025-04-18"
lastmod: "2025-04-18"
series:
toc: true
---


<!--more-->

Explore the spreadsheet names in one excel file
```
readxl::excel_sheets(AEM_list_files_names[[1]])
```
 

Explore the spreadsheet names in multiple excel files
```
z_sheetnames <- lapply(AEM_list_files_names, readxl::excel_sheets)
```