library(tidyverse)
library(here)

tv_hours_tabulation <- gss_cat %>%
  filter(age < 30) %>%
  group_by(marital) %>%
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

write.csv(tv_hours_tabulation, here("TV_Hours_by_Marital.csv"))
