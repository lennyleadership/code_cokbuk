---
weight: 04
title: "Extract Numbers from Character"
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2025-03-06"
lastmod: "2025-03-06"
series:
toc: true
---

# Extract string before a sign

case: 0.10 +/- 0.04  
output: 0.10 (space)

```
sub("\\+/-.*","","0.10 +/- 0.04")

```


# position is fixed.

```
substr(week_end, start = 1, stop = 2)
```

# position is random.

```
# Extract numbers using stringr
numbers <- stringr::str_extract_all(text, "\\d+")

# Convert to numeric
numeric_result <- as.numeric(unlist(numbers))
```
Reference: <a href = "https://www.r-bloggers.com/2024/06/extracting-numbers-from-strings-in-r/" target="_blank" rel="noopener noreferrer">R-bloggers | Extracting Numbers from Strings in R</a>
