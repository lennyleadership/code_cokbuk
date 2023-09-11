---
weight: 03
title: Table
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2023-09-09"
series:
toc: true
---


<!--more-->

# 2-Column Table

## HTML code
```
<table >
<caption style="text-align:left", align = "top"><b></b></caption>
<colgroup><col style="width: 40%" /><col style="width: 60%" />
</colgroup>
  <tr>
    <th><p>Title Left</p></th>
    <th><p>Title Right</p></th>
  </tr>
  <tr>
    <td><p>sentence left
      </p></td>
    <td><p>sentence right.
      </p></td>
  </tr>
  <tr>
    <td><p>sentence left
      </p></td>
    <td><p> sentence right.
      </p></td>
  </tr>
</table>

```

`VALIGN=TOP`: is used in `<th>` and `<tbody>`.  

## css codes
```
table{
  width: 100%;

  border-collapse: collapse; /* single border of table*/
  border-spacing:0;
  border: 1px solid #ddd;
}

```

```
th, td{
  padding: 10px 20px; /*row height*/
  border-collapse: collapse; /* single line of inside*/
  border: 1px solid #ddd;
}
```

To style the header of the table.

```
th{
  background-color: lightblue; /*add background color to the header*/
  border-bottom: double;
}

```

```
tr:nth-child(even){
  back-ground-color: #f2f2f2; /*zebra strip*/
}
```

use the CSS `padding` property to add padding on table <b>cells</b>.

<figure>
  <img width = "540" src = "/docs/images/Screenshot 2023-09-09 150734.png"/>
  <figcaption class = "bottom"></figcaption>
</figure>

# Merge two columns

inline css style.   
```
<th colspan = "2">Warranty</th>
```