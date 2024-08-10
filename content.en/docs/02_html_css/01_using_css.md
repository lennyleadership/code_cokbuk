---
weight: 01
title: Using css
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
series:
toc: true
links:
- icon: door-open
  icon_pack: fas
  name: [w3schools | css]
  url: https://www.w3schools.com/html/html_css.asp
---


<!--more-->

<h1><span class = "overline">Inline</span></h1>

An inline CSS is used to apply a unique style to <b>a single</b> HTML element.  

An inline CSS uses the <span style = "color:red">`style`</span> attribute of an HTML element.

The following example sets the text color of the <span style = "color:red">`<h1>`</span> element to blue, and the text color of the <span style = "color:red">`<p>`</span> element to red:  

```  
<h1 style="color:blue;">A Blue Heading</h1>

<p style="color:red;">A red paragraph.</p> 

```

<h1><span class = "overline">Internal</span></h1>

An internal CSS is used to define a style for <b>a single</b> HTML page.

An internal CSS is defined in the `<head>` section of an HTML page, within a `<style>` element.

The following example sets the text color of ALL the `<h1>` elements (on that page) to blue, and the text color of ALL the `<p>` elements to red. In addition, the page will be displayed with a "powderblue" background color: 

```
 <!DOCTYPE html>
<html>
<head>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html> 
```

<h1><span class = "overline">External</span></h1>

To use an external style sheet, add a link to it in the `<head>` section of each HTML page:

```
 <!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html> 
```