---
weight: 01
title: Font Style
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-27"
lastmod: "2023-10-27"
series:
toc: true
---


<!--more-->


`custom-style="Style1"` is the command in pandoc to render a rmarkdown to a word.

```
:::{custom-style="Style1"}
To apply formatting styles from a word file 
:::
```

# include image using officer

```{r fig1, fig.cap='Figure 1: title', out.width="100%", include=T} 
knitr::include_graphics("./images/Al_in_FB.png")
```

# Tips

HTML table can’t be rendered through officer.  Instead, I need to create a data frame/ tibble.