---
weight: 03
title: Table
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-09-09"
lastmod: "2025-03-07"
series:
toc: true
---


<!--more-->

# Create a table

## HTML code
```
<table >
<caption style="text-align:left", align = "top"><b></b></caption>
<colgroup><col style="width: 40%" /><col style="width: 60%" />
</colgroup>
  <tr>
    <thead><p>
      </p></th>
    <thead><p>
      </p></th>
  </tr>
  <tr>
    <td>
      </td>
    <td>
      </td>
  </tr>
  <tr>
    <td>
      </td>
    <td>
      </td>
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

th, td{
  padding: 10px 20px; /*row height*/
  border-collapse: collapse; /* single line of inside*/
  border: 1px solid #ddd;
}


th{
  background-color: lightblue; /*add background color to the header*/
  border-bottom: double;
}


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
<td colspan = "2">Warranty</td>
```

# Merge two rows

inline css style.   
```
<td rowspan = "2">Warranty</td>
```

# Page break when printing a large HTML table

try this
```
table { page-break-inside:auto }
tr    { page-break-inside:avoid; page-break-after:auto }
thead { display:table-header-group }
tfoot { display:table-footer-group }
```

try this
```
@media print
{
  table { page-break-after:auto }
  tr    { page-break-inside:avoid; page-break-after:auto }
  td    { page-break-inside:avoid; page-break-after:auto }
  thead { display:table-header-group }
  tfoot { display:table-footer-group }
}
```

try this
```
@media print
{
table {page-break-after:always}
}

```

Reference: <a href = "https://stackoverflow.com/questions/1763639/how-to-deal-with-page-breaks-when-printing-a-large-html-table" target="_blank" rel="noopener noreferrer">stackoverflow | </a>