---
weight: 02
title: Check ANOVA assumption
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

```
df_residuals <- as.data.frame(residuals(aov_list))

df_fit <- as.data.frame(fitted.values(aov_list))


df_aov <- cbind(df_residuals, df_fit)


plot1 <-ggplot(df_aov, aes(x = `fitted.values(aov_list)`, y = `residuals(aov_list)`))+
  geom_point()+
  geom_hline(yintercept=0,linetype="dashed") +
  geom_smooth(method = loess, col='red', size = .5)+
  labs(title = "Residuals vs Fitted", x = "Fitted values", y = "Residuals")+
  theme(plot.title = element_text(size = 10),
        axis.text = element_text(size = 8),
        axis.title = element_text(size = 8))

plot2 <- ggqqplot(residuals(aov_list))+
  labs(title = "Q-Q Plot of Residuals", y = "Standadized Residuals", caption = "Q-Q Plot: Quantile - Quantile Plot")+
  theme(plot.title = element_text(size = 10),
        axis.text = element_text(size = 8),
        axis.title = element_text(size = 8),
        plot.caption = element_text(size = 5))

grid.arrange(plot1, plot2, ncol = 2)
```