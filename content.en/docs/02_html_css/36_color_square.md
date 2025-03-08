---
weight: 36
title: Color Square
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-05-11"
lastmod: "2025-03-07"
series:
toc: true
---

<style>
.box {
  float: left;
  height: 20px;
  width: 20px;
  margin-bottom: 15px;
  border: 1px solid black;
  clear: both;
}

.red {
  background-color: red;
}

.green {
  background-color: green;
}

.blue {
  background-color: blue;
}
</style>

<!--more-->

# Option #1

<b>css</b>
```
.box {
  float: left;
  height: 20px;
  width: 20px;
  margin-bottom: 15px;
  border: 1px solid black;
  clear: both;
}

.red {
  background-color: red;
}

.green {
  background-color: green;
}

.blue {
  background-color: blue;
}
```

<b>HTML</b>
```
<div><div class='box red'></div>= Super Fast Trains</div>
<br>
<div><div class='box green'></div>= Mail/Express Trains</div>
<br>
<div><div class='box blue'></div>= Local/ Passenger Trains</div>
```



<b>Output</b>   

<body>
<div><div class='box red'></div>= Super Fast Trains</div>
<br>
<div><div class='box green'></div>= Mail/Express Trains</div>
<br>
<div><div class='box blue'></div>= Local/ Passenger Trains</div>
</body>


Reference: <a href = "https://stackoverflow.com/questions/49070926/i-want-to-create-a-small-square-colour-filled-box-in-html-css-and-most-import" target="_blank" rel="noopener noreferrer">stack<b>overflow</b> | a small square colour filled box</a>

# Option #2
```
<div style="color:#a50b5e;">&#9632; Jazzberry Jam</div>
```

<b>Output</b>
<div style="color: #a50b5e;">&#9632; Jazzberry Jam</div>





