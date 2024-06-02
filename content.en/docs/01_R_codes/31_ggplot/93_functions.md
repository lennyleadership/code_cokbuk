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

# Make a plot function
sometimes you’re creating the same plot over and over again, and you don’t need that flexibility. Instead of creating components, you might want to write a function that takes data and parameters and returns a complete plot.  

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

```
piechart <- function(data, mapping) {
  ggplot(data, mapping) +
    geom_bar(width = 1) + 
    coord_polar(theta = "y") + 
    xlab(NULL) + 
    ylab(NULL)
}

piechart(mpg, aes(factor(1), fill = class))
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
Note: Pay close attention to the use of `...`. When included in the function definition `...` allows a function to accept arbitrary additional arguments. Inside the function, you can then use `...` to pass those arguments on to another function. Here we pass `...` onto geom_smooth() so the user can still modify all the other arguments we haven’t explicitly overridden. When you write your own component functions, it’s a good idea to always use `...` in this way.

Finally, note that you can only add components to a plot; you can’t modify or remove existing objects.

# Make multiple plot components
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

* A data.frame, which will override the default dataset associated with the plot. (If you add a data frame by itself, you’ll need to use` %+%`, but this is not necessary if the data frame is in a list.)

* An `aes()` object, which will be combined with the existing default aesthetic mapping.

* Scales, which override existing scales, with a warning if they’ve already been set by the user.

* Coordinate systems and faceting specification, which override the existing settings.

* Theme components, which override the specified components.

# Make multiple annotation
It’s often useful to add standard annotations to a plot. In this case, your function will also set the data in the layer function, rather than inheriting it from the plot. There are two other options that you should set when you do this. These ensure that the layer is self-contained:

* `inherit.aes = FALSE` prevents the layer from inheriting aesthetics from the parent plot. This ensures your annotation works regardless of what else is on the plot.

* `show.legend = FALSE` ensures that your annotation won’t appear in the legend.

One example of this technique is the `borders()` function built into ggplot2. It’s designed to add map borders from one of the datasets in the maps package: 

```
borders <- function(database = "world", regions = ".", fill = NA, 
                    colour = "grey50", ...) {
  df <- map_data(database, regions)
  
  geom_polygon(
                aes_(~long, ~lat, group = ~group), 
                data = df, fill = fill, colour = colour, ..., 
                inherit.aes = FALSE, show.legend = FALSE
                )
}
```

# Make multiple arguments

If you want to pass additional arguments to the components in your function, `...` is no good: there’s no way to direct different arguments to different components. Instead, you’ll need to think about how you want your function to work, balancing the benefits of having one function that does it all vs. the cost of having a complex function that’s harder to understand.

To get you started, here’s one approach using `modifyList()` and `do.call()`: 
```
geom_mean <- function(..., bar.params = list(), errorbar.params = list()) {
  params <- list(...)
  bar.params <- modifyList(params, bar.params)
  errorbar.params  <- modifyList(params, errorbar.params)
  
  bar <- do.call("stat_summary", modifyList(
    list(fun = "mean", geom = "bar", fill = "grey70" ),
    bar.params )
  )
  
  errorbar <- do.call("stat_summary", modifyList(
    list(fun.data = "mean_cl_normal", geom = "errorbar", width = 0.4 ),
    errorbar.params )
  )

  list(bar, errorbar)
}

ggplot(mpg, aes(class, cty)) + 
  geom_mean(
    colour = "steelblue",
    errorbar.params = list(width = 0.5, linewidth = 1)
  )
ggplot(mpg, aes(class, cty)) + 
  geom_mean(
    bar.params = list(fill = "steelblue"),
    errorbar.params = list(colour = "blue")
  )
```

# Functional programming
Since ggplot2 objects are just regular R objects, you can put them in a list. This means you can apply all of R’s great functional programming tools. For example, if you wanted to add different geoms to the same base plot, you could put them in a list and use `lapply()`.

```
geoms <- list(
  geom_point(),
  geom_boxplot(aes(group = cut_width(displ, 1))),
  list(geom_point(), geom_smooth())
)

p <- ggplot(mpg, aes(displ, hwy))

lapply(geoms, function(g) p + g)
```

# Reference
<a href = "https://ggplot2-book.org/programming" target="_blank" rel="noopener noreferrer">ggplot2: Elegant Graphics for Data Analysis (3e) | Chapter 18 Programming with ggplot2</a>