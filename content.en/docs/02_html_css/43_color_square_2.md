---
weight: 43
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
  position: relative;
  margin-left: 20px;
}
.box:before{
  position: absolute;
  left: -20px;
  content: "";
  height:20px;
  width:20px;
  margin-bottom:15px;
  border:1px solid black;
}
.box.red:before{
  background-color:red;
}
.box.green:before{
  background-color:green;
}
.box.blue:before{
  background-color:blue;
}
</style>


<!--more-->

# Option #3

<b>css</b>
```
.box {
  position: relative;
  margin-left: 20px;
}
.box:before{
  position: absolute;
  left: -20px;
  content: "";
  height:20px;
  width:20px;
  margin-bottom:15px;
  border:1px solid black;
}
.box.red:before{
  background-color:red;
}
.box.green:before{
  background-color:green;
}
.box.blue:before{
  background-color:blue;
}
```

<b>HTML</b>
```
<div class='box red'>= Super Fast Trains</div>
<div class='box green'>= Mail/Express Trains</div>
<div class='box blue'>= Local/ Passenger Trains</div>
```




<div class='box red'> = Super Fast Trains</div>
<br>
<div class='box green'> = Mail/Express Trains</div>
<br>
<div class='box blue'> = Local/ Passenger Trains</div>


