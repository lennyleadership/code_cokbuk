---
weight: 36
title: Color Square
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-05-011"
lastmod: "2024-05-011"
series:
toc: true
---


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

<b>Output</b>  

<div class='box red'></div> = Super Fast Trains
<br>
<div class='box green'></div> = Mail/Express Trains
<br>
<div class='box blue'></div> = Local/ Passenger Trains


# Option #2
```
<div style="color:#a50b5e;">&#9632; Jazzberry Jam</div>
```

<div style="color: #a50b5e;">&#9632; Jazzberry Jam</div>


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

<div class='box red'> = Super Fast Trains</div>
<br>
<div class='box green'> = Mail/Express Trains</div>
<br>
<div class='box blue'> = Local/ Passenger Trains</div>


