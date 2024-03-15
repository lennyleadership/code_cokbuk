---
weight: 11
title: Add text layer
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-26"
lastmod: "2023-10-26"
series:
toc: true
---


<!--more-->
---

# Add text to a chart horizontally
```
geom_text(x=1, y=60, label="Lower limit 60%", color = "brown", 
  size = 2, vjust = -0.5, hjust=0.2)+
geom_text(x=1, y=160, label="Upper limit 160%", color = "brown", 
  size = 2, vjust = 1, hjust=0.2)
```


# Add text to a chart vertically
```
geom_text(x=1, y=60, label="Lower limit 60%", color = "brown", 
size = 2, angle = 90)


geom_text(aes(x = count_date, y = eff_value), 
label = df_2019_2024_eff_alpha$detector_id, hjust = -.5, vjust = -.5, 
size = 3, color = "black")

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