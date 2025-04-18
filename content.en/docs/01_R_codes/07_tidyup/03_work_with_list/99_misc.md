---
weight: 
title: 
authors: Lenny
categories: null
tags: 
description: 
draft: true
date: "2024"
lastmod: "2024"
series:
toc: true
---


<!--more-->


# lapply and FUN application to a list

```

list _2 <- lapply(list_1, FUN = function(t) gsub("search", "", x = t, fixed = T))

```


# filter out

```

grep("*GC.xls|\\$|2018 reports|Temp Stations 2020", list, invert=T, value = T)

```

grep works with data frame and list.  

with (invert=T, value = T) I will get all names  

without (invert=T, value = T) I will get all names



## Difference between list[1] and list[[1]]

Two outputs are different
```
df_1 <- as.data.frame(df_original[1])  # the file name is included in colnames
 
df_1 <- as.data.frame(df_original[[1]]) # the file name is not included in colnames
```


# Look up the location code in each file in a list
```
n <- length(list)
 
z <- data.frame(x <- rep(NA,n))
 
for (i in 1:length(list)){
  z[i,] <- unique(list[[i]]$location_code)
}
```


# Look up file info in the list
```
tail(file.info(list_files[[1]])$ctime)
 
file.info(list_files[[1]])
```



# rbind/cbind files in list to dataset when arguments in each file matches

```
df <- as.data.frame(do.call(cbind, list))

df <- as.data.frame(do.call(rbind, list))
```


## rbind files in list to dataset when arguments in each file does not match
```
x1 <- list_names[[1]]
x2 <- list_names[[2]]
x3 <- list_names[[3]]
x4 <- list_names[[4]]
 
n <- max(length(x1),length(x2),length(x3),length(x4))
 
c(length(x1),length(x2),length(x3),length(x4))
 
length(x1) <- n
length(x2) <- n
length(x3) <- n
length(x4) <- n
 
y1 <- as.data.frame(x1)
y2 <- as.data.frame(x2)
y3 <- as.data.frame(x3)
y4 <- as.data.frame(x4)
 
names(y4) <- "names"
names(y3) <- "names"
names(y2) <- "names"
names(y1) <- "names"
 
y4$y4_names <- y4$names
y3$y3_names <- y3$names
y2$y2_names <- y2$names
y1$y1_names <- y1$names
 
z <- y4 |>
  left_join(y3, by = "names") |>
  left_join(y2, by = "names") |>
  left_join(y1, by = "names")
```

reference: <a href = "https://stackoverflow.com/questions/3699405/how-to-cbind-or-rbind-different-lengths-vectors-without-repeating-the-elements-o" target="_blank" rel="noopener noreferrer">How to cbind or rbind different lengths vectors without repeating the elements of the shorter vectors?</a>

## subset a dataset into a list
```
list <- group_split(df, location_code)
```