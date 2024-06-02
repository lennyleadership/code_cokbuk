---
weight: 12
title: Text Property
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-02-15"
lastmod: "2024-02-15"
series:
toc: true
---


<!--more-->
---

# Chart title: Position, size

```
theme(plot.title = element_text(hjust = .5, vjust = -10))

theme(plot.title = element_text(size = 10))
```
note <label for="note" class="margin-toggle sidenote-number"></label><span class="sidenote">Hjust = .5 means center, Vjust = -10 means “in the chart” </span>


# x, y axis title and size

```
labs(x = "additional acid volume (mL)", y = "Recovery (%)")

theme(axis.title.x = element_text(size = 7))
theme(axis.title.y = element_text(size = 7))

theme(axis.text = element_text(size = 5)) # for both x and y axis
```


# x axis text angle

```
theme(axis.text.x = element_text(angle = 90))

```

# Increase distance between text and title on the axis
 
Set the values of the `margin` on `t`op, `r`ight, `b`ottom, and `l`eft side of the element.
 
```
axis.title.y = element_text(margin = margin(t = 0, r = 20, b = 0, l = 0))
 
axis.title.x = element_text(margin = margin(t = 20, r = 0, b = 0, l = 0))
```




# Legend location: inside the plot
```
geom_text(x = 50, y = 200, label = "Legend:\nRed line: 99.7% quantile\nBlue dash line: 90% quantile\nHistogram plot in sage color\nBox plot in orange color", 
hjust = 0, fontface = "plain", size = 2.5)
```


# Legend location: at the bottom of the plot
```
labs(title = "TITLE", 
      x = "", y = "Alpha Counts", 
      caption = "Black solid line: average \nBlack dash line: Upper limit (avg + 2SD) and lower limit (avg - 2SD) \nBlue solid line: trend",
        color = "Dot Colors:") +  # customize the legend title
theme(plot.title = element_text(hjust = 0.5, vjust = 0.5, size = 9),
      axis.title = element_text(size = 7),
      axis.text = element_text(size = 5),
      plot.caption = element_text(hjust = 0, size = 7), # locate the caption (the note) to the bottom of the chart
      strip.text = element_text(size = 5), # change the font size of subtitle of facet-chart
      legend.title = element_text(size = 7),
      legend.text = element_text(size = 7),
      legend.position = "bottom", # move the legend to the plot bottom
      legend.justification = "left")

```



# When dot label overlaid

```
geom_text(position = position_jitterdodge(dodge.width = 0.1))
```

