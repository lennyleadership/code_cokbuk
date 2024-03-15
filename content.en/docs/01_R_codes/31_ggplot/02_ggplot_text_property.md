---
weight: 02
title: ggplot2 Text Property
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
theme(plot.title = element_text(hjust = .5, vjust = -10)

theme(plot.title = element_text(size = 10)
```
note <label for="note" class="margin-toggle sidenote-number"></label><span class="sidenote">Hjust = .5 means center, Vjust = -10 means “in the chart” </span>


# x, y axis title and size

```
labs(x = "additional acid volume (mL)", y = "Recovery (%)")

theme(axis.title.x = element_text(size = 7)
theme(axis.title.y = element_text(size = 7))
```


# x axis text angle and size 

```
theme(axis.text.x = element_text(angle = 90)

theme(axis.text = element_text(size = 5)
```

# caption

```
labs(caption = “text”)
```



# Legend property
```
theme(legend.position = "none")
```

#  customize facet title
```
facet_label <- as.character(df_label$label)

names(facet_label) <- as.character(df_label$detector_id)

then
facet_wrap(~detector_id, labeller = labeller(detector_id = facet_label))
```





