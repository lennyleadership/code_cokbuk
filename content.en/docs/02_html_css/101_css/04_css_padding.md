---
weight: 04
title: Padding css
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

The CSS `padding` properties are used to generate space around an element's content, inside of any defined borders.

CSS has properties for specifying the padding for each side of an element:

    padding-top
    padding-right
    padding-bottom
    padding-left

All the padding properties can have the following values:

    length - specifies a padding in px, pt, cm, etc.
    % - specifies a padding in % of the width of the containing element
    inherit - specifies that the padding should be inherited from the parent element

To shorten the code, it is possible to specify all the padding properties in one property.  The `padding` property is a shorthand property.

If the padding property has <b>four</b> values:

          /* top  right bottom left*/
    padding: 25px 50px  75px   100px;

        
If the padding property has <b>three</b> values:

          /* top  right & left bottom*/
    padding: 25px 50px         75px;


If the padding property has <b>two</b> values:

          /* top & bottom  right & left*/
    padding: 25px          50px;