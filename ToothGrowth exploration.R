#Call data
data('ToothGrowth')
View(ToothGrowth)

#Assign the data to a variable and filter
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)

#Sort by tooth length.
arrange(filtered_tg, len)

#The same as the preceding steps coded slightly differing.
arrange(filter(ToothGrowth, dose == 0.5), len)

#Set up a pipe to call, filter, group and output.
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm = T),.group="drop")

print(filtered_toothgrowth)

