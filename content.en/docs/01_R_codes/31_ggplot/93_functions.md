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
Note: Pay close attention to the use of “...”. When included in the function definition “...” allows a function to accept arbitrary additional arguments. Inside the function, you can then use “...” to pass those arguments on to another function. Here we pass “...” onto geom_smooth() so the user can still modify all the other arguments we haven’t explicitly overridden. When you write your own component functions, it’s a good idea to always use “...” in this way.

Finally, note that you can only add components to a plot; you can’t modify or remove existing objects.

# Make multiple components
```
geom_mean <- function() {
  list(
       stat_summary(fun = "mean", geom = "bar", fill = "grey70"),
       stat_summary(fun.data = "mean_cl_normal", geom = "errorbar", width = 0.4)
  )
}

ggplot(mpg, aes(class, cty)) + geom_mean()

ggplot(mpg, aes(drv, cty)) + geom_mean()
```

You’re not just limited to adding layers in this way. You can also include any of the following object types in <b>the list</b>:

* A data.frame, which will override the default dataset associated with the plot. (If you add a data frame by itself, you’ll need to use %+%, but this is not necessary if the data frame is in a list.)

* An aes() object, which will be combined with the existing default aesthetic mapping.

* Scales, which override existing scales, with a warning if they’ve already been set by the user.

* Coordinate systems and faceting specification, which override the existing settings.

* Theme components, which override the specified components.


# Reference
<a href = "https://ggplot2-book.org/programming" target="_blank" rel="noopener noreferrer">ggplot2: Elegant Graphics for Data Analysis (3e) | Chapter 18 Programming with ggplot2</a>