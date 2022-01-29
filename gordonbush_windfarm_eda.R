#This is just a quick EDA of data from Gordonbush Windfarm 2016-2018.
#Data source: https://www.kaggle.com/matteodefelice/gordonbush-wind

install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
install.packages("ggplot2")
library("tidyverse")
library("skimr")
library("janitor")
library("ggplot2")

#Call data
gbwf_data <- read.csv(file = 'gordonbush-2016_2018.csv', sep=',')
View(gbwf_data)
#Data[seq(1, nrow(Data), 4), ]
split_data <- gbwf_data[seq(1, nrow(gbwf_data), 2000), ]

#Plot general purpose scatter plot of output data.
ggplot(data=split_data) + 
  geom_point(mapping = aes(x = DateTime, y = ActualGenerationOutput)) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  theme(axis.text.x = element_text(size = 8)) +
  labs(title="Gordonbush WF actual generation 2016-18",x="Date & Time", y = "Actual Generation (MW)")

#Histogram of actual generation output
ggplot(gbwf_data, aes(x=ActualGenerationOutput)) + 
  geom_histogram(binwidth=0.5) + 
  labs(title="Gordonbush WF actual generation 2016-18",x="Actual Generation (MW)", y = "Count")

data_mean <- mean(gbwf_data$ActualGenerationOutput)
data_median <- median(gbwf_data$ActualGenerationOutput)

print(data_mean)
print(data_median)
