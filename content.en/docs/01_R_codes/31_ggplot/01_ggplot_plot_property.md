---
weight: 01
title: ggplot2 Plot Property
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


# Put point shape in aes()

```
geom_point(aes(shape = factor(season)), size = 3) 
```


# Put color in aes()
```
geom_point(aes(color = factor(`season`))
```

# Facet
 
```
facet_grid(nuclide ~ temp)
```

# Facet grid-independant axis scale

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


# Add jitter points

```
geom_jitter(color="black", size=0.4, alpha=0.5)
```


# Add points to a boxplot with label

```
geom_text(position=position_jitter(width=.15, height = .1))+
geom_point(aes(color=variable), position = position_jitterdodge(dodge.width = 0.1),size=3, alpha=1)
```


# Add a horizontal line
```
geom_hline(yintercept = 60, linetype="dashed", color = "brown")+
  geom_hline(yintercept = 160, linetype="dashed", color = "brown")+
```

# Add text to a chart horizontally
```
  geom_text(x=1, y=60, label="Lower limit 60%", color = "brown", size = 2, vjust = -0.5, hjust=0.2)+
  geom_text(x=1, y=160, label="Upper limit 160%", color = "brown", size = 2, vjust = 1, hjust=0.2)
```


# Add text to a chart vertically
```
  geom_text(x=1, y=60, label="Lower limit 60%", color = "brown", size = 2, angle = 90)
```


# Add a line segment
```
geom_segment(aes(x = ##, y = 0, xend = ##, yend = 10), color = "darkgreen", linewidth = 1.5)
```


# place multiple charts side-by-side
```
library(gridExtra)
plot1 <- ggplot()
plot2 <- ggqqplot()

grid.arrange(plot1, plot2, ncol = 2)
```
