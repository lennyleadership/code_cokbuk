---
weight: 01
title: Customized Theme
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-03-06"
lastmod: "2025-03-06"
series:
toc: true
---




# To embed a plot to a html file, I should do

```
  theme(plot.title = element_text(size = 15, vjust = -10, hjust = .2),
        axis.text = element_blank(),
        axis.title = element_blank(),
        axis.ticks = element_blank(),
        
        # no frame, no grid
        panel.grid = element_line(colour = "#fffff8"),
        panel.border = element_blank(),
        
        # panel.background is the inside of the plot
        panel.background = element_rect(fill = "#fffff8"),
        
        # plot.background is the outside of the plot
        plot.background = element_rect(fill = "#fffff8")
        )```

```


# side by side

```
theme_side_by_side <- function(){

  theme(

  plot.title = element_text(hjust = .5, size = 14),

  axis.text = element_text(size = 12),

  axis.title = element_text(size = 12),

 

  panel.grid = element_line(colour = "grey90"),

  panel.border = element_rect(fill = NA,colour = "grey90"),

  panel.background = element_rect(fill = "#fffff8"),

  # color in plot.background defines plot line color

  plot.background = element_rect(fill = "#fffff8", color = "#fffff8")

  )

}

# remove the grid in the master panel

theme(panel.grid = element_line(colour = "white"))
```
 

# single plot

```
theme_single <- function(){

  theme(
    plot.title = element_text(hjust = .5, size = 16),
    axis.text = element_text(size = 12),
    axis.title = element_text(size = 12),


    panel.grid = element_line(colour = "grey90"),

    # color in panel.border controls the color of the border line

    # fill in panel.border controls the background color of the panel

    panel.border = element_rect(fill = NA, colour = "grey90"),

    panel.background = element_rect(fill = "#fffff8"),

    # color in plot.background defines plot line color

    plot.background = element_rect(fill = "#fffff8", color = "#fffff8")

  )

}
```


# Customize theme for event

```
theme_event <- function(){
  theme(
    plot.title = element_text(hjust = .5, size = 16),
    axis.text = element_text(size = 6),
    axis.title = element_text(size = 6),
 
    # no axis, no 
    axis.line.y=element_blank(),
    axis.text.y=element_blank(),
    axis.title.x=element_blank(),
    axis.title.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.text.x =element_blank(),
    axis.ticks.x =element_blank(),
    axis.line.x =element_blank(),
 
    panel.grid = element_line(colour = "#fffff8"),
    panel.border = element_rect(fill = NA,colour = "#fffff8"),
    panel.background = element_rect(fill = "#fffff8"),
 
    # color in plot.background defines plot line color
    plot.background = element_rect(fill = "#fffff8", color = "#fffff8"),
 
    legend.position = "bottom",
    # color in legend background
    legend.background = element_rect(fill = "#fffff8")
  )
}
```

Reference: <a href = "https://rpubs.com/mclaire19/ggplot2-custom-themes" target="_blank" rel="noopener noreferrer">RPubs | Learning to create custom themes in ggplot</a>
