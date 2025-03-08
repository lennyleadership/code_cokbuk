---
weight: 01
title: Date Manipulation
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-03-07"
lastmod: "2025-03-07"
series:
toc: true
---


<!--more-->


```
Library(stringi) # stri_datetime_fields()

stri_datetime_fields(z$time_stemp[1])
```

  Year Month Day Hour Minute Second Millisecond WeekOfYear WeekOfMonth DayOfYear DayOfWeek Hour12
1 2024    11  14   11      9      0           0         46           3       319         5     11
  AmPm Era
1    1   2
 
``` 
df_rm141_minute <- z %>%
  mutate(# year
         year = stri_datetime_fields(as.POSIXct(time_stemp) )$Year,
         # month
         month = stri_datetime_fields(as.POSIXct(time_stemp) )$Month,
         # epiweek starts on Sunday
         week_of_year = stri_datetime_fields(as.POSIXct(time_stemp) )$WeekOfYear,
         week_of_month = stri_datetime_fields(as.POSIXct(time_stemp) )$WeekOfMonth,
         week_start = format(lubridate::parse_date_time(paste(year, week_of_year, 0, sep="/"),'y/W/w'), "%m-%d" ) ,
         week_end = format(lubridate::parse_date_time(paste(year, week_of_year, 6, sep="/"),'y/W/w'), "%m-%d" ),
         week_period = paste0(week_start, " - ", week_end),
         # day
         weekday = weekdays(as.POSIXct(time_stemp) ),
         # time
         time = as_hms(format(as.POSIXct(time_stemp), "%H:%M:%S"))
         ) |>
  select(-week_start, -week_end)
```

option #2 epiweek starts on Sunday

```
Week_of_year = lubridate::epiweek(as.POSIXct(time_stemp) )
```