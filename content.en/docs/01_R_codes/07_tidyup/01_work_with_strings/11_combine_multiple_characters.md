---
weight: 11
title: Combine Multiple Characters Into One Character
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-10-04"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->

```
Library(stringr) # str_c from it.

z1 <- unique(df$detector_id)

z2 <- cbind(z1)

str_c(z2, collapse = ",")
```


# words separated by space 

Step 1: 
```
z <- c("Ac-228  Ag-108m Ag-110m Am-241  Ar-41   Ba-133  Ba-140  Be-7    Bi-212  Bi-214  Ce-141  
        Ce-144  Co-57   Co-60   Cr-51   Cs-134  Cs-137  Eu-152  Eu-154  Eu-155  Fe-59   Hf-175  
        Hf-181  K-40    Kr-85m  Mn-54   Mo-99   Nb-94   Nb-95   Pa-233  Pb-212  Pb-214  Ra-226  
        Ru-103  Ru-106  Sb-124  Sb-125  Sc-46   Se-75   Ta-182  Tc-99m  Th-228  Th-234  Tl-208  
        U-235   U-238   Zn-65   Zr-95")

z1 <- stringr::str_split(z, "\t")
```

Step 2:
```
gamma_nuclides <- unlist(z1)
```

Option:
```
z3 <- unique(z1[[1]])
 
z4<- sort(z3, decreasing = F)
 
paste0(z4, collapse = " ")
```


# words separated by comma

```
z_vector <- names(B_SW_GAB_ALPHA)
 
z_vector_1 <- paste0(z_vector, collapse = ", ")
 
z_vector_2 <- c("sample_id, loc_desc, loc_code, col_date, FIELD_QC_TYPE, ANALYSIS_FREQ, att_eff, background, count_time, detector_id, res_mass, Sample_Units, sample_vol, total_alpha_counts, GROSS_ALPHA, GROSS_ALPHA_FO")
 
z_vector_3 <- stringr::str_split(z_vector_2, ", ")
 
z_header <- unlist(z_vector_3)
 
names(B_SW_GAB_ALPHA) <- z_header
```