---
weight: 01
title: Date and Time
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
# Break down to pieces
Case: "2024-11-14 11:09:00"

```
Library(stringi) # stri_datetime_fields()

stri_datetime_fields(z$time_stemp[1])
```

  Year Month Day Hour Minute Second Millisecond WeekOfYear WeekOfMonth DayOfYear DayOfWeek Hour12
1 2024    11  14   11      9      0           0         46           3       319         5     11
  AmPm Era
1    1   2


# Extract time from date + time

data ="2021/05/25 12:34:25"
```
df$collection_time <- format(df$collection_time, format = "%H:%M")
```


# Get time from datetime                                                       
## Get hour from datetime using format in the form of hours
```
print(paste("Hours : ", format(as.POSIXct(data), format = "%H")))
```

## Get minute from datetime using format in the form of minutes
```
print(paste("Minutes : ", format(as.POSIXct(data), format = "%M")))
```

## Get second from datetime using format in the form of seconds
```
print(paste("Seconds : ", format(as.POSIXct(data), format = "%S")))
```

## Get hour and minute from datetime using format in the form of hours and minutes
```
print(paste("Hours and Minutes : ", format(as.POSIXct(data), format = "%H:%M")))
```

## Get hour, minute, and second from datetime using format in the form of hours, minutes and seconds
```
print(paste("Time : ", format(as.POSIXct(data), format = "%H:%M:%S")))
```

# Turn character into date and time using `parse_date_time()`

Case #1: Before: `12/11/2004 12:00:00 AM`

```
df_1$date <- as.Date(lubridate::parse_date_time(df_1$AnalysisDate, "%m/%d/%y %I:%M:%S %p"))
```

After: `2004-12-11`


Case #2: Before: `2025-01-09 15:00:00`
``` 
lubridate::parse_date_time(z$analysis_date[1], orders = 'ymd HMS')
 
as.Date(lubridate::parse_date_time(z$analysis_date[1], 'ymd HMS'))
```


# Turn number into date

```
df$date <- as.Date(as.numeric(df$date), origin = "1900-01-01")
```


# change multiple date formats in the same column

```
as.Date(parse_date_time(count_date, orders = c('mdy HM', 'ymd HMS')))
```


# Change two date columns using format in sapply()

``` 
A_csv_2025[,10:11] <- sapply(A_csv_2025[,10:11], format, format= "%Y-%m-%d")
```


# Symbols of dates


| Symbol|	Meaning| Example  |
| --- | --- | --- |
|%Y	| 4-digit year	| 2007|  
|%m	| month (00-12)	| 00-12 |
|%d	| day as a number (0-31) | 01-31|  
|%a	| abbreviated weekday	| Mon|  
|%A	| unabbreviated weekday	| Monday|  
|%y	| 2-digit year	| 07  |
|%b	| abbreviated month	| Jan|  
|%B	| unabbreviated month	| January | 
