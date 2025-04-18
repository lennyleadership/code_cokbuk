---
weight: 11
title: Add geom_hline to facet plot
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-04-18"
lastmod: "2025-04-18"
series:
toc: true
---


<!--more-->

# Case #1
```
# create a separate data frame
dMean <- mtcars %>%
    group_by(gear) %>%
    summarise(MN = mean(cyl))

 
ggplot(mtcars) +
    geom_point(aes(mpg, cyl)) +
# quote the separate data frame
    geom_hline(data = dMean, aes(yintercept = MN)) +
    facet_wrap(~ gear)
```


# Case #2

```
group_1 <- BV_elements_limits |>
  filter(Analysis %in% c("Aluminum (Al)", "Antimony (Sb)", "Arsenic (As)", "Barium (Ba)"))


(plot_group_1 <- z_1 |>
  filter(Analysis %in% c("Aluminum (Al)", "Antimony (Sb)", "Arsenic (As)", "Barium (Ba)")) |>
  ggplot(aes(x = date, y = raw_value)) +
  geom_point()+
  geom_hline(data = group_1, aes(yintercept = `BV RDL (ug/L)`), linetype = "dashed", color = "red")+
  geom_hline(data = group_1, aes(yintercept = `Now BV LMDL (ug/L)`), linetype = "dashed", color = "black")+ 
  theme_bw()+
  facet_wrap(vars(Analysis), scale = "free_y" )

)
```
