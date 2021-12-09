library("palmerpenguins")
library("ggplot2")
library("USArrests")

data(penguins)
data("USArrests")

ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data=USArrests) + geom_point(mapping = aes(x = Murder, y = Assault))
