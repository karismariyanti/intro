---
  title: "Iterasi"
author: "Muhammad Aswan Syahputra"
date: "4/9/2019"
output:
  html_document: 
  df_print: default
fig_height: 6
fig_width: 9
highlight: textmate
keep_md: yes
theme: yeti
toc: yes
toc_collapsed: yes
toc_float: yes
editor_options: 
  chunk_output_type: inline
---


#install.packages("tidyverse")
library(tidyverse)
library(datasauRus)

datasaurus_dozen

datasaurus_dozen %>%
  group_by(dataset)%>%
  summarize(
    mean_x = mean(x),
    sd_x = sd(x),
    mean_y = mean(y),
    sd_y=sd(y),
    cor = cor(x,y)
  )

datasaurus_dozen %>%
  ggplot(aes(x = x, y = y))+
  geom_point(aes(colours(= dataset)))+
  geom_smooth(method = "lm", se = FALSE)+
  facet_wrap(~dataset, ncol = 3, scales = "free")+
  guides(colours = FALSE)+
  theme_minimal()