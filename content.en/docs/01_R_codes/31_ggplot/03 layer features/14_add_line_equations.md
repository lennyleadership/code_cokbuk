---
weight: 14
title: Add Line Equation
authors: Lenny
categories: null
tags: 
description: 
draft: false
date: "2024-03-14"
lastmod: "2024-10-04"
series:
toc: true
---


<!--more-->

```
lm_eqn <- function(df, x, y){
  m <- lm(y ~ x, {{df}});
  eq <- substitute(italic(y) == a + b %.% italic(x)*","~italic(R[adj])^2 == r2~","italic(Pr) == p,
                   list(a = format(unname(coef(m)[1]), digits = 2),
                        b = format(unname(coef(m)[2]), digits = 2),
                        r2 = format(summary(m)$adj.r.squared, digits = 3),
                        p = format(summary(m)$coefficients[2,4], digits = 3)) )
  as.character(as.expression(eq));
}
 
 
(plot_COD_SENTRY_1 <- tbl_raw_grab |>
  ggplot(aes(x = COD, y = SENTRY_SIGNAL))+
  geom_point(color = "#004C80")+
  theme_bw()+
  geom_smooth(method = "lm",se = F)+
  geom_text(x = 600, y = 50, label = lm_eqn(tbl_raw_grab, tbl_raw_grab$COD, tbl_raw_grab$SENTRY_SIGNAL), parse = TRUE, color = "brown")+
  labs(title = "No Correlation Between COD and SENTRY_Signal",
       x = "COD (mg/L)", y = "SENTRY Signal")
)
```

<a href = "https://stackoverflow.com/questions/7549694/add-regression-line-equation-and-r2-on-graph" target="_blank" rel="noopener noreferrer">stack overflow | Line equation reference</a>
