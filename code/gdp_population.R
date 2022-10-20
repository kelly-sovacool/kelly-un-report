# load tidyverse packages
library(tidyverse)

# read in data
gapminder_1997 <- read_csv("gapminder_1997.csv")

# learn more about a function
?read_csv

read_csv(file = "gapminder_1997.csv")

# make a plot
ggplot(data = gapminder_1997) +
  aes(x = `gdpPercap`) +
  labs(x = "GDP Per Capita") +
  aes(y = lifeExp) +
  labs(y = "Life Expectancy") +
  labs(title = "Do people
       - in wealthy countries live longer?") +
  geom_point() +
  aes(color = continent) +
  scale_color_brewer(palette = "Set1") +
  aes(size = pop/1000000) +
  labs(size = "Population (in millions)") +
  aes(shape = continent)

# different color palettes
RColorBrewer::display.brewer.all()

# collapse code to make more concise
ggplot(data = gapminder_1997, aes(x = gdpPercap, y = lifeExp, color = continent, size = pop/1000000)) +
  labs(x = "GDP Per Capita", y = "Life Expectancy", size = "Population (in millions)",
       title = "Do people in wealthy countries live longer?") +
  geom_point() +
  scale_color_brewer(palette = "Set1")
