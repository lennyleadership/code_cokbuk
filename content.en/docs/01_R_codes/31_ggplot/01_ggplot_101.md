---
weight: 01
title: ggplot
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-10"
lastmod: "2023-09-10"
series:
toc: true
---


<!--more-->
---

#Set the background as black & white:
```
theme_set(theme_bw())
```

Add a horizontal line:
```
geom_hline(yintercept = 60, linetype="dashed", color = "brown")+
  geom_hline(yintercept = 160, linetype="dashed", color = "brown")+
```

Add text to a chart:
```
  geom_text(x=1, y=60, label="Lower limit 60%", color = "brown", size = 2, vjust = -0.5, hjust=0.2)+
  geom_text(x=1, y=160, label="Upper limit 160%", color = "brown", size = 2, vjust = 1, hjust=0.2)
```

Add jitter points to a box plot: 
```
geom_jitter(color="black", size=0.4, alpha=0.5)
```

To define point shape, need aes():
```
geom_point(aes(shape = factor(season)), size = 3) 
```

To define point color, need aes():
```
geom_point(aes(color = factor(`season`))
```

Facet setup:  
```
facet_grid(nuclide ~ temp)
```

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

scale_fill_viridis(discrete = TRUE, alpha=0.5)

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

# Heatmap with ggplot():

```
ggplot(df, aes(x-axis, y-axis, fill = value))+
  geom_tile()+
  scale_fill_gradient(low="lightyellow", high="red")
```


# place multiple charts side-by-side:
```
library(gridExtra)
plot1 <- ggplot()
plot2 <- ggqqplot()

grid.arrange(plot1, plot2, ncol = 2)
```


# add points to a boxplot with label:
```
geom_text(position=position_jitter(width=.15, height = .1))+
geom_point(aes(color=variable), position = position_jitterdodge(dodge.width = 0.1),size=3, alpha=1)
```