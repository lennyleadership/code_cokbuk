---
weight: 11
title: ggplot2 101
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-10"
lastmod: "2023-10-27"
series:
toc: true
---


<!--more-->
---

# Set the background as black & white:  
```
theme_set(theme_bw())
```


# Point shape in aes()

```
geom_point(aes(shape = factor(season)), size = 3) 
```


# Add color in aes()
```
geom_point(aes(color = factor(`season`))
```

# Point color condition
```
df_count_date %>%
  ggplot(aes(x=count_date, y = freq))+
  geom_point(col =ifelse(df_count_date$freq <10, 'blue', 'red'))

```


# Facet
 
```
facet_grid(nuclide ~ temp)
```



# jitter points

```
geom_jitter(color="black", size=0.4, alpha=0.5)
```


# Add points to a boxplot with label

```
geom_text(position=position_jitter(width=.15, height = .1))+
geom_point(aes(color=variable), 
position = position_jitterdodge(dodge.width = 0.1),
size=3, alpha=1)
```



#  ‘jitter’ overlapped geom_pointrange
```
geom_point(aes(y = AssignedValue), shape = 21, size = 3, color = "red",
             position = position_dodge2(width = 1))+
geom_pointrange(aes(y = ReportedValue,ymin = Low_Limit, ymax = High_Limit), 
                  size = 1, color = "blue",
                  position = position_dodge2(width = 1))
```


# Define dot colors

```
color.codes <- as.character((c("blue", "red")))
detector_cat <- c("detector IP ended with N","detector IP ended with NN")

then use:
scale_color_manual(values = setNames(color.codes, detector_cat))+

# having hline of average and upper limit and lower limit
# having annotation text
# having legend

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




