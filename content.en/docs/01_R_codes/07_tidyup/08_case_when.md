---
weight: 08
title: case_when()
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2023-10-27"
lastmod: "2023-10-27"
series:
toc: true
---


<!--more-->
---

# To create a categorical column
```
df %>%mutate(season = case_when(
  df$date <"2021-07-01" ~ "2021-Spring",
  df$date > "2021-07-01" &  df$date < "2021-12-01"~ "2021-Fall",
  df$date <"2022-07-01" ~ "2022-Spring",
  df$date > "2022-07-01" &  df$date < "2022-12-01"~ "2022-Fall",
  df$date <"2023-08-01" ~ "2023-Spring",
  df$date > "2023-08-01" &  df$date < "2023-12-01"~ "2023-Fall",
  .default = "other"
)
)
```

# Case Study


## Solution #1
```
library(purrr)

my_data %>% 
  mutate(group = case_when(
           date %in% tox_date_1q ~ "tox_date_1q", 
           date %in% tox_date_3q ~ "tox_date_3q", 
           map_vec(date, ~ any(.x > tox_date_1q - 30 & 
                           .x < tox_date_1q + 30)) ~ "tox_period_1q", 
           map_vec(date, ~ any(.x > tox_date_3q - 30 & 
                           .x < tox_date_3q + 30)) ~ "tox_period_3q", 
           .default = "other"))
```

## Solution #2
```
# ----------------
# "Tox" inputs
tox_date_1q <- as.Date(c("2022-03-08","2023-03-07","2024-02-21"))
tox_date_3q <- as.Date(c("2022-06-21","2022-09-14","2022-11-29","2023-06-05","2023-09-13","2023-11-14"))

# ----------------
# Toy data
set.seed(100)

toy_data <- tibble(
  date = c(
    c(tox_date_1q, tox_date_3q), 
    sample(seq.Date(
      from = min(tox_date_1q, tox_date_3q) - days(90),
      to = max(tox_date_1q, tox_date_3q) + days(90),
      by = "days"), 
      20 - length(c(tox_date_1q, tox_date_3q)))),
  value = sample(1:10, 20, replace = TRUE) )




# ----------------
# Creating labels
new_data <- map_dfr(ls(pattern = "^tox"), \(x) tibble(date = get(x), label = x))

new_data <- map_dfr(
  1:nrow(new_data),
  \(x) bind_rows(
    new_data[x, ],
    tibble(
      date = new_data$date[x] + days(c(-30:-1, 1:30)), 
      label = str_replace(new_data$label[x], "date", "period"))))

# Labeling the data
new_data <- left_join(as_tibble(toy_data), new_data, by = "date") %>% 
  mutate(label = fct_na_value_to_level(factor(label), level = "others")) %>% 
  arrange(date)

```

Reference: <a href = "https://stackoverflow.com/questions/78391302/longer-object-length-is-not-a-multiple-of-shorter-object-length-using-case-when/78391535#78391535" target="_blank" rel="noopener noreferrer">stackoverflow | longer object length is not a multiple of shorter object length using case_when for date wrangling</a>