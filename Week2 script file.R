# Examples from week 2 class discussion

# I plan to put this into a R notebook, but I'm starting here.
# Both files should contain the same info (there may be small differnces).

library(tidyverse)

# This weeks assignment was to create one of the six grahps from question 6 of 
# Exercises 3.6.1

ggplot(data = mpg) +
  geom_point(mapping = aes(x= displ, y = hwy), size = 4) +
  geom_smooth(mapping = aes(x= displ, y = hwy), size = 2, se = FALSE)

# This can be simplified by mapping the aestheitcs in the ggplot()

ggplot(data = mpg, mapping = aes(x= displ, y = hwy)) +
  geom_point(size = 4) +
  geom_smooth(size = 2, se = FALSE)

# The second graph shows the fits by some factor (three of them)
# Drivetrain (drv) was used earlier in the document

ggplot(data = mpg, mapping = aes(x= displ, y = hwy)) +
  geom_point(size = 4) +
  geom_smooth(mapping = aes(group = drv), size = 2, se = FALSE)

# The middle left plot adds color to ALL the data by drivetrain

ggplot(data = mpg, mapping = aes(x= displ, y = hwy, colour = drv)) +
  geom_point(size = 4) +
  geom_smooth(mapping = aes(group = drv), size = 2, se = FALSE)

# The middle right graph fits all the data to all the data

ggplot(data = mpg) +
  geom_point(mapping = aes(x= displ, y = hwy, colour = drv), size = 4) +
  geom_smooth(mapping = aes(x= displ, y = hwy), size = 2, se = FALSE)

# Bottom left moves changes the linetype by drivetrain
ggplot(data = mpg) +
  geom_point(mapping = aes(x= displ, y = hwy, colour = drv), size = 4) +
  geom_smooth(mapping = aes(x= displ, y = hwy, linetype = drv), size = 2, se = FALSE)

# The final graph, bottom right looks to be plotting a larger white point 
# under the colored points

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "white", size = 8) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = drv), size = 4)


