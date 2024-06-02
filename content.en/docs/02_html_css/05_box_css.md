---
weight: 05
title: Box css
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2024-06-02 "
series:
toc: true
---


<!--more-->

The CSS box model is essentially a box that wraps around every HTML element. It consists of: margins, borders, padding, and the actual content. The image below illustrates the box model:

<figure>
  <img width = "540" src = "/docs/images/Screenshot 2023-09-09 153003.png"/>
  <figcaption class = "bottom"></figcaption>
</figure>


    Content - The content of the box, where text and images appear
    Padding - Clears an area around the content. The padding is transparent
    Border - A border that goes around the padding and content
    Margin - Clears an area outside the border. The margin is transparent


```
<!DOCTYPE html>
<html>
<head>
<style>
div {
  background-color: lightgrey;
  width: 500px;
  border: 15px solid green;
  padding: 50px;
  margin: 100px;
}
</style>
</head>
<body>

<h2>Demonstrating the Box Model</h2>

<p>The CSS box model is essentially a box that wraps around every HTML element. It consists of: borders, padding, margins, and the actual content.</p>

<div>This text is the content of the box. We have added a 50px padding, 20px margin and a 15px green border. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>

</body>
</html>

```

The above codes will produce the following html.

<figure>
  <img width = "540" src = "/docs/images/Screenshot 2023-09-09 153449.png"/>
  <figcaption class = "bottom"></figcaption>
</figure>

`margin` works in `table{}`, not in `th{}` and `td{}`.
