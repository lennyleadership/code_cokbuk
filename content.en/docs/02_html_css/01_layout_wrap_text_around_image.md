---
weight: 01
title: Wrap Text Around An Image
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-06-15"
lastmod: "2025-06-15"
series:
toc: true
---


<!--more-->


 
<div>
  <div style="float: right; width: 60%; padding-left: 20px">
<figure>
```{r, out.width= "100%"}
 
knitr::include_graphics("./images/image_01.jpg")
```
<figcaption>Figure 1: Figure caption</figcaption>   
<ol style = "font-size: .8rem">Note:
<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, .</li>
<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, .</li>
</ol>
</figure>
  </div>
  <div>
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </div>
</div>

Note:  
(1) The layout of the image is defined by `float`.  
(2) `<figcaption>` can display the figure caption at the bottom of the image.  Without it, the figure caption will fill the row of the image.


A failed attempt to get text wrap around an image  
 
```{r, fig.cap = "Simplified Diagram", out.width = "50%", out.extra='style="float: right; padding:10px"'}
 
knitr::include_graphics("./images/Softener regeneration.jpg")
```
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
 
Note: The figure caption is defined in the `r code chunk`. The output is that the figure caption is on top to the left; and it is also above the text paragraph which wraps around the figure.