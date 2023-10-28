---
weight: 01
title: ggplot 101
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


# To polish

To define point shape, need aes():
```
geom_point(aes(shape = factor(season)), size = 3) 
```


To define point color, need aes():
```
geom_point(aes(color = factor(`season`))
```




# Plot Properties

Add x axis lables  
```
labs(x = "additional acid volume (mL)", y = "Recovery (%)")
```


Add caption
```
labs(caption = “text”)
```


Put the x axis label vertical: 
```
theme(axis.text.x = element_text(angle = 90)
```


Axis label (both x and y):        
```
theme(axis.text = element_text(size = 5),
X axis title:        theme(axis.title.x = element_text(size = 7),
Y axis title:        theme(axis.title.y = element_text(size = 7))
```


Chart title position:  
Hjust = .5 means center, Vjust = -10 means “in the chart”  
```
theme(plot.title = element_text(hjust = .5, vjust = -10)
```

Chart title property:
```
theme(plot.title = element_text(size = 10)
```

Legend property:
```
theme(legend.position = "none")
```




# Facet
Facet setup:  
```
facet_grid(nuclide ~ temp)
```

Facet grid-independant axis scale
```
facet_wrap(~element, scales = "free_y")
```

# zoom x-axis
```
ggplot(...)+
  geom_point()+
  xlim(0,100)
```



scale_fill_viridis(discrete = TRUE, alpha=0.5)









export ggplot to a high definition image:
```
ggsave(filename = "/*.png", limitsize = F, device = 'png', dpi = 700)
```