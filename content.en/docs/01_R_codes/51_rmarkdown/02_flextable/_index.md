---
Weight: 2
title: flextable
authors: Lenny Lin
categories: null
tags: 
description: 
draft: false
date: "2023-10-09"
lastmod: "2023-10-09"
series:
toc: true
bookCollapseSection: true
---


<!--more-->

---
# Defaults
set_flextable_defaults(font.size = 7, padding = 3) 

A good example:   memo_section_of_statistical_analysis in MRAD PT/2023.05 investigation folder.

# To Break a Table
To have a white space column in a table, so it looks like two split tables, you can add many white space columns.
flextable(df_layout, col_keys = c("col1", " col2", "col_x"," col3", " col4")) %>%
  add_header_row(values = c("sut_title_1", ""," sut_title_2"), colwidths = c(2, 1, 2))%>%
  width(j = c("col_x"), width = 0.2)%>%
  empty_blanks()%>%
  width(width = 1)


