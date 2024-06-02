---
weight: 12
title: Scatter Plot
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-04-25"
lastmod: "2024-04-25"
series:
toc: true
---


<!--more-->
---

# Point shape in aes()

```
geom_point(aes(shape = factor(season)), size = 3) 
```

# jitter points

```
geom_jitter(color="black", size=0.4, alpha=0.5)
```


# Differentiate dots by color

## Add color in aes()
```
geom_point(aes(color = factor(`season`))
```


##  Customize dot color - Option #1

```
df_count_date %>%
  ggplot(aes(x=count_date, y = freq))+
  geom_point(col =ifelse(df_count_date$freq <10, 'blue', 'red'))
```

## Customize dot color - Option #2

Mutate a new of "detector_cat" column first in the dataset.

```
color.codes <- as.character((c("blue", "red")))
detector_cat <- c("detector IP ended with N","detector IP ended with NN")
```
then use:

```
scale_color_manual(values = setNames(color.codes, detector_cat))+
```

having hline of average and upper limit and lower limit  
having annotation text  
having legend  

```
ggplot(df1, aes(x = count_date, y = eff_value, color = detector_cat))+
  geom_point(size = .5)+
  scale_color_manual(values = setNames(color.codes, detector_cat))+
  geom_hline(data = df2, aes(yintercept = eff_alpha_mean), linetype = 1)+
geom_hline(data = df2, aes(yintercept = eff_alpha_upper_limit), linetype = 2)+
  geom_hline(data = df2, aes(yintercept = eff_alpha_lower_limit), linetype = 2)+
  ylim(25,45)+
  facet_wrap(~detector_id)+
  theme_bw()+
  labs(title = "Efficiency for Alpha in 2019 - 2024", 
       x = "", y = "Efficiency %",
       caption = "Solid line represents average \nDash lines ...",
       color = "Different Colors:")+ # change the legend title.
  theme(plot.title = element_text(hjust = 0.5, vjust = 0.5, size = 9),
        axis.title = element_text(size = 7), # change the axis title
        axis.text = element_text(size = 5),
        plot.caption = element_text(hjust = 0, size = 7),
        strip.text = element_text(size = 5),
        legend.title = element_text(size = 7),
        legend.text = element_text(size = 7),
        legend.position = "bottom",
        legend.justification = "left") # move the legend to the left.
```

## Customize dot color - option #3

A temporary solution. No need to mutate a new column. 


```
scale_color_identity()+
```

```
(plot <- df |>
  mutate(group = case_when(
    value > 200 ~ "red",
    value > 100 & value < 200 ~ "brown",
    .default = "#7a7979"
  )) |>
  ggplot(aes(x = collection_date, y = value, color = group))+
  geom_point( )+
  scale_color_identity()+
  theme_bw()+
  facet_wrap(~location_code, ncol = 2)
)
```
