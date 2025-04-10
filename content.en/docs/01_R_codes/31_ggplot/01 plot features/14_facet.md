---
weight: 14
title: Facet
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-25"
lastmod: "2025-03-06"
series:
toc: true
---



# Facet
 
```
facet_grid(nuclide ~ temp, scales = "free")

facet_grid(rows = vars(year), scalues = "free_y")

```

If you want to preserve the grid layout, but want wrap-like free scales, you might be interested in `ggh4x::facet_grid2()` which has an independent argument that lets an axis vary within a row or column in a grid-layout.

```
library(ggplot2)

ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) + 
  geom_point() +
  ggh4x::facet_grid2(. ~ cyl, scales = "free_y", independent = "y")

```



# Reorder facets
```
df_flow_L$location_code <- factor(df_flow_L$location_code, 
                                  levels = c("INFL", "EFFL"))
 
in ggplot:
facet_grid(rows = vars(location_code))

```


#  customize facet title
```
facet_label <- as.character(df_label$label)

names(facet_label) <- as.character(df_label$detector_id)

then
facet_wrap(~detector_id, labeller = labeller(detector_id = facet_label))
```


# Add text at one facet ggplot 

```
text_count <- data.frame(
  count_date = as.Date("2019-06-01"), 
  count_value = c(16500), 
  detector_id = factor(c("D1"))
)

text_eff <- data.frame(
  count_date = as.Date("2019-01-01"), 
  eff_value = c(35), 
  detector_id = factor(c("D1"))
)
```
Reference: <a href = "https://stackoverflow.com/questions/11889625/annotating-text-on-individual-facet-in-ggplot2" target="_blank" rel="noopener noreferrer">stackoverflow | Annotating text on individual facet in ggplot2</a>



# annotate text on individual facet with two-factor grid in ggplot2.

```
text_eff_std <- data.frame(
  count_date = as.Date("2019-01-01", "2019-01-01"), 
  eff_value = c(43, 44), 
  lab = c("blue dots: board IP ending with #", 
  "brown dots: board IP ending with ##"),
  detector_id = factor(c("D1", "D1")),
  Standard = factor("K4-001","K4-001")
)
```
