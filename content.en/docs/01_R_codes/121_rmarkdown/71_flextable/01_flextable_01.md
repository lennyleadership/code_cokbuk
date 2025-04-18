---
weight: 01
title: Flextable
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-27"
lastmod: "2025-04-18"
series:
toc: true
---


<!--more-->

in pre-setup

```
set_flextable_defaults(font.size = 7, padding = 3) 
```


To have a white space column in a table, so it looks like two split tables, you can add many white space columns.
```
flextable(df_layout, col_keys = c("col1", " col2", "col_x"," col3", " col4")) %>%
  add_header_row(values = c("sut_title_1", ""," sut_title_2"), colwidths = c(2, 1, 2))%>%
  width(j = c("col_x"), width = 0.2)%>%
  empty_blanks()%>%
  width(width = 1)
```
A good example: memo_section_of_statistical_analysis in MRAD PT/2023.05 investigation folder.


# To create the same pattern of a flextable as HTML table.

```{r, include= FALSE}
theme_design <- function(x) {
  x <- border_remove(x)
  std_border <- fp_border_default(width = 4, color = "white")
  x <- fontsize(x, size = 10, part = "all")
  x <- align(x, align = "center", part = "all")
  x <- bold(x, bold = TRUE, part = "header")
  x <- height(x, height = .5)
  x <- bg(x, bg = "#014a7c", part = "header")
  x <- color(x, color = "white", part = "header")
  x <- padding(x, padding = 6, part = "all")
  x <- border_outer(x, part="all", border = std_border )
  x <- border_inner_h(x, border = std_border, part="all")
  x <- border_inner_v(x, border = std_border, part="all")
  x <- set_table_properties(x, width = .9, layout = "autofit")
}
```

```{r}
tbl_softener_regen_schedule <- tibble(Testing = c("Chemical analysis of waste in the sludge tank","Inhibition test of waste in the sludge tank","Chemical analysis of waste at PRO","Mini-toxicity test of waste at PRO","Brine elution study"),
                                      "202#-##-## 08:41am" = c("Sample missed","Conducted","Conducted","Conducted","Missed"),
                                      "202#-##-## 12:00pm" = c("Conducted","Conducted","Conducted","Sample missed","Conducted")
                                      )

tbl_softener_regen_schedule |>
  flextable() |>
  theme_zebra() |>
  hrule(rule = "exact", part = "all") |>
  theme_design()
```