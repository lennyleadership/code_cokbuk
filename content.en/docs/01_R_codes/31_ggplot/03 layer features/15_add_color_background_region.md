---
weight: 15
title: Color Background Region
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-06-02"
lastmod: "2024-06-02"
series:
toc: true
---


<!--more-->
---

(plot_wkly_sentry <- df |>
  filter(wkends != "other") |>
  ggplot(aes(x = time, y = consumable_bod))+
  geom_line(color = "#004C80")+
  theme_bw()+
  annotate("rect", fill = "#ffdd7c", alpha = .3, xmin = as_hms("00:00:00"), xmax = as_hms("23:59:59"),  
           ymin = 0, ymax = 20)+
  annotate("rect", fill = "#ffdd7c", alpha = .3, xmin = as_hms("00:00:00"), xmax = as_hms("23:59:59"),  
           ymin = 180, ymax = 300)+
  labs(x = "", y = paste0("SENTRY", "\U2122"," Signal (Consumable BOD) ") )+
  facet_grid(wkends ~ wkday )
)
