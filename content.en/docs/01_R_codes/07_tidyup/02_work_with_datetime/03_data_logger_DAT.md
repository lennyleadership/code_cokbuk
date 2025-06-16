---
weight: 03
title: Data Logger in DAT format
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

Case study: the class of time_stamp is character.

Firstly, take it in with `read.delim`. 

```
import.folder <- r"(…)"

filename <- paste0(import.folder, "/", "xxx_Temp_RH",".dat")

df <- read.delim(filename, skip = 3, sep = ",")
```
Note: 
 
 
 
 
Secondly, parse the time and convert it to hms class for plotting.  
It seems to me that `format(as.POSIXct(z$time_stamp), format = "%H:%M:%S")` and `hms::as_hms(format(as.POSIXct(z$time_stamp), format = "%H:%M:%S" ) )` has reached its limit when the row exceeds 40,000.
 
The solution is to apply `strptime` at first, then `hms::as_hms(format(z$time_strptime, format = "%H:%M:%S") )`.  
In short, `hms::as_hms(format(strptime(z$time_stamp), format = "%H:%M:%S") )`  
 
```
z <- data.frame(time_stamp = df[,1])
 
z$time <- format(as.POSIXct(z$time_stamp), format = "%H:%M:%S"  )
 
z$time_hms <- hms::as_hms(format(as.POSIXct(z$time_stamp), format = "%H:%M:%S" ) )
 
z$time_strptime <- strptime(z$time_stamp, "%Y-%m-%d %H:%M:%S")
 
z$time_2 <- hms::as_hms(format(z$time_strptime, format = "%H:%M:%S") )
```

