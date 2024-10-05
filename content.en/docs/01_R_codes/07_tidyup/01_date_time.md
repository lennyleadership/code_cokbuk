---
weight: 01
title: Work with Date and Time
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-02-15"
lastmod: "2024-02-15"
series:
toc: true
---


<!--more-->

# Extract time from date + time

```
df$collection_time <- format(df$collection_time, format = "%H:%M")
```

```
# create variable with one time stamp
data ="2021/05/25 12:34:25"
                                                       
# get time from date using format in the
# form of hours
print(paste(
"Hours : ", format(as.POSIXct(data), format = "%H")))
 
# get time from date using format in the
# form of minutes
print(paste(
"Minutes : ", format(as.POSIXct(data), format = "%M")))
 
# get time from date using format in the
# form of seconds
print(paste(
"Seconds : ", format(as.POSIXct(data), format = "%S")))
 
# get time from date using format in the
# form of minutes
print(paste(
"Hours and Minutes : ", format(as.POSIXct(data), format = "%H:%M")))
 
# get time from date using format in the
# form of seconds
print(paste(
"Time : ", format(as.POSIXct(data), format = "%H:%M:%S")))
```

# Turn character into date and time

use parse_date_time()

```
"12/11/2004 12:00:00 AM"

df_1$date <- as.Date(parse_date_time(df_1$AnalysisDate, "%m/%d/%y %I:%M:%S %p"))

outcome “2004-12-11”
```

# Turn number into date
```
df$date <- as.Date(as.numeric(df$date), origin = "1900-01-01")
```


# change multiple date formats in the same column

```
as.Date(parse_date_time(count_date, orders = c('mdy HM', 'ymd HMS')))
```


# Symbols of dates


| Symbol|	Meaning| Example  |
| --- | --- | --- |
|%d	| day as a number (0-31) | 01-31|  
|%a	| abbreviated weekday	| Mon|  
|%A	| unabbreviated weekday	| Monday|  
|%m	| month (00-12)	| 00-12 |
|%b	| abbreviated month	| Jan|  
|%B	| unabbreviated month	| January | 
|%y	| 2-digit year	| 07  |
|%Y	| 4-digit year	| 2007|  
