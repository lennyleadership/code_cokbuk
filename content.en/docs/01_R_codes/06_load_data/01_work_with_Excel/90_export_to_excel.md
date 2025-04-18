---
weight: 90
title: "Export excel file(s)"
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

```

dest.filepath <- r"( )"

write.csv(df_01, file = paste0(dest.filepath, "/", ".csv"))

```


# Vignette: Write Multiple Excel files with purr

```

# Split: one data frame per Species
iris %>%
  dplyr::group_split(Species) -> list_of_dfs

```

```

# Use the value from the "Species" column to provide a name for the list members
list_of_dfs %>%
  purrr::map(~pull(.,Species)) %>% # Pull out Species variable
  purrr::map(~as.character(.)) %>% # Convert factor to character
  purrr::map(~unique(.)) -> names(list_of_dfs) # Set this as names for list members

```

```

list_of_dfs %>%
  writexl::write_xlsx(path = "../datasets/test-excel/test-excel.xlsx")

```

Reference: <a href = "https://martinctc.github.io/blog/vignette-write-and-read-multiple-excel-files-with-purrr/" target="_blank" rel="noopener noreferrer">Vignette: Write & Read Multiple Excel files with purr</a>
