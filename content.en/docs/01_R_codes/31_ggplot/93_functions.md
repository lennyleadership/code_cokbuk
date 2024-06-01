---
weight: 93
title: Make ggplot2 Function
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-06-01"
lastmod: "2024-06-01"
series:
toc: true
---


<!--more-->
---

# Make a function for a complete plot
```
scatter_plot2 <- function(data, x, y, mytitle) {
  ggplot(data, aes({{x}}, {{y}}))+
    geom_point(color = "red")+
    theme_bw()+
    theme(axis.text.x = element_text(angle = 45, hjust = 1))+
    labs(title = {{mytitle}})
}
 
scatter_plot2(mtcars, hp, mpg, "my Title")

```

# Make a single component
```
bestfit <- geom_smooth(
  method = "lm", 
  se = FALSE, 
  colour = alpha("steelblue", 0.5),
  linewidth = 2
)

ggplot(mpg, aes(cty, hwy)) + 
  geom_point() + 
  bestfit
  
ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  bestfit
```

```
geom_lm <- function(formula = y ~ x, colour = alpha("steelblue", 0.5), 
                    linewidth = 2, ...){
                    geom_smooth(formula = formula, se = FALSE,
                                method = "lm", colour = colour, 
                                linewidth = linewidth, ...)
}

ggplot(mpg, aes(displ, 1 / hwy)) + 
  geom_point() + 
  geom_lm()
  
ggplot(mpg, aes(displ, 1 / hwy)) + 
  geom_point() + 
  geom_lm(y ~ poly(x, 2), linewidth = 1, colour = "red")
```


Reference: <a href = "https://ggplot2-book.org/programming" target="_blank" rel="noopener noreferrer">Chapter 18 Programming with ggplot2</a>