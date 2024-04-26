---
weight: 12
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



