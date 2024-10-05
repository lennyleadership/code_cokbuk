---
weight: 2
title: Work with rmd
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-09"
lastmod: "2023-10-09"
series:
toc: true
---


<!--more-->

# Figures can be numbered automatically

Put the following codes in YAML.

```
  bookdown::html_document2:
    theme: journal   
    css:
     - css_default_rev04.css
     - css_disclaimer_rev02.css
```

# fig.align for figure position

```{r, fig.align='center'}
 
knitr::include_graphics("./images/name.png")
```

# fit.align for table position


# insert an image in *.rmd
```
<div class = "container">
  <div class = "image">
  <figure>
  <a href = "https://lern-hub.com/digital/session_detail/w3m2qtd1j5sjxqs46q9vgt3m" target ="_blank" rel = "noopener noreferrer">
<img width = "640" src ="./images/webinar_fisher_pipetting.png">
  </a>
    <figcaption>Fisher Learn Event Hub | Good Laboratory Pipetting Practices</figcaption>
  </figure>
  </div>
  <div class = "text"><p>Note: need to register an account before watching the training.</p>
  </div>
</div>
```

# embed a youtube video

embed one youtube video in rmarkdown:

Option #1:
```
<div class = "container">
  <div class = "image">
<figure>
[![](https://img.youtube.com/vi/BRDApYgvDqQ/0.jpg)](https://www.youtube.com/watch?v=BRDApYgvDqQ)
<br><br>
Video #1: Laboratory Rules by AsapScience
</figure>
</div>
  <div class = "text">Laboratory Safety</div>
</div>
```

Option #2: use data-external= "1", instead of frameborder="0".  It works for one youtube video and a series of videos.
```
<div class = "container">
  <div class = "image">
<figure>
<iframe width="640" height="360" src="https://www.youtube.com/embed/MEIXRLcC6RA" title="General Lab Safety" data-external= "1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
Video #4: General Lab Safety
</figure>
  </div>
  <div class = "text"><p>laboratory Safety</p></div>
</div>
```

# html whitespace

The New Line character – also known as the "carriage return". The HTML code for newline character is: &#13;
The Tab Character, which is what you get when you press the tab button in a text field. The HTML code for Tab Character is: &#09;

For example, let's say you want to put two spaces after a sentence, but something else in the website rendering engine is automatically removing one of the spaces. You may be able to type &#20;&#20; to add two spaces.

There are four common widths for space characters:

Standard-width space. This is also called "non-line breaking space" because it will not cause a line break (AKA carriage return).
Em space. This is called "Em" because it's as wide as the letter M is in whichever typeface you're using. (If you've heard the term em-dash, this is a dash as wide as the letter M.)
En space. This is called "En" because it's as wide as the letter n is in your typeface.
And finally, there's "Thin space", which is the thinnest of all spaces.

# To plot correlation plots in rmarkdown

```{r, plot_heatmap}
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#c2e4c9", "#5cb86f"))
 
corrplot(df_bvmetals_all_original_corr, method = "color", col = col(200),
                              diag = F, type = "upper", addCoef.col = "black",
                              tl.cex = .7, number.cex = 8/ncol(df_bvmetals_all_original_corr),
                              title = "Correlation Among Elements Without Removing Outliers at STP_CH", mar = c(0,0,1,0))
```
 
 
```{r, plot_pair}
pairs(df_bvmetals_all_original_3, lower.panel = NULL, col = 4,
      font.labels = .6)
 
```
