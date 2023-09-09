---
weight: 1
title: From Wide to Long
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
---
Use `gather()`

The wide data frame looks like:
```
olddata_wide
#>   subject sex control cond1 cond2
#> 1       1   M     7.9  12.3  10.7
#> 2       2   F     6.3  10.6  11.1
#> 3       3   F     9.5  13.1  13.8
#> 4       4   M    11.5  13.4  12.9

```

```
library(tidyr)

data_long <- gather(olddata_wide, condition, measurement, control:cond2, factor_key=TRUE)

```

The arguments to gather():
 - data: Data object
 - key: Name of new key column (made from names of data columns)
 - value: Name of new value column
 - ...: Names of source columns that contain values
 - factor_key: Treat the new key column as a factor (instead of character vector)
 
```
#>    subject sex condition measurement
#> 1        1   M   control         7.9
#> 2        2   F   control         6.3
#> 3        3   F   control         9.5
#> 4        4   M   control        11.5
#> 5        1   M     cond1        12.3
#> 6        2   F     cond1        10.6
#> 7        3   F     cond1        13.1
#> 8        4   M     cond1        13.4
#> 9        1   M     cond2        10.7
#> 10       2   F     cond2        11.1
#> 11       3   F     cond2        13.8
#> 12       4   M     cond2        12.9

```

