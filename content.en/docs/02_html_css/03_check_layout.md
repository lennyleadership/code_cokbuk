---
weight: 03
title: Check Layout
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

Check the HTML layout – text wrap around an image with background

<div>
  <div style="float:right; width: 60%; padding-left: 20px; background: red">
  <figure>
```{r, out.width= "100%"}
 
knitr::include_graphics("./images/image.jpg")
```
<figcaption>Figure 1: Simplified Diagram of Power House Discharge</figcaption>   
  </figure>
  </div>
  <div>
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  </div>
</div>
 
Note: must use `out.width= "100%"`