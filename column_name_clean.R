penguins %>% 
  select(-species)

penguins %>% 
  rename(island_new=island)
#head(penguins)

rename_with(penguins, toupper)

rename_with(penguins, tolower) %>% 
  rename(island_new=island)


