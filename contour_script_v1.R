library("readr")
library("plotly")

#Load data from CSV file, preview data.
mock_gw_data <- read.csv(file = 'mock_gw_data_2.csv', sep=',')

#plot contours
fig <- plot_ly(
  x = mock_gw_data$x, 
  y = mock_gw_data$y,
  
  #First incarnation used coordinates with negative numbers, 
  #so z coordinates needed to be converted to a matrix.
  #z = matrix(mock_gw_data$z, ncol = 3,),
  
  z = mock_gw_data$z,
  type = "contour",
  contours = list(showlabels = TRUE),
  text = rownames(mock_gw_data$name)
) %>% 
  #Adds arrows pointing to BH positions.
  fig <- add_annotations(
    x = mock_gw_data$x,
    y = mock_gw_data$y,
    text = mock_gw_data$name,
    xref = "x",
    yref = "y",
    type = "scatter"
    )

fig
