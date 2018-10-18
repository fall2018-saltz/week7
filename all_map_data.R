
library("ggplot2")
library("maps")
library("ggmap")
##Step B: Create a color coded map by state.area
map.popColor <- ggplot(update_clean_data, aes(map_id = stateName))
map.popColor <- map.popColor +
  geom_map(map = us1, aes(fill=state.area))
map.popColor <- map.popColor +
  expand_limits(x = us1$long, y = us1$lat)
map.popColor <- map.popColor +
  scale_fill_gradient2(name=" Area of State", low = "blue", mid = "purple", high = "red")+
  coord_map() + ggtitle("State Area")
map.popColor


##Step C: Create a color shaded map of the U.S. based on the Murder rate for each state 
#murder rate
map.popColor2 <- ggplot(update_clean_data, aes(map_id = stateName))
map.popColor2 <- map.popColor2 +
  geom_map(map = us1, aes(fill=Murder))
map.popColor2 <- map.popColor2 +
  expand_limits(x = us1$long, y = us1$lat)
map.popColor2 <- map.popColor2 +
  scale_fill_gradient2(name=" Murder Rate", low = "blue", mid = "purple", high = "red")+
  coord_map() + ggtitle("Murder Rate")
map.popColor2

## set size = pop, fill= , use the long and lat as the geom_point position
#show population as a circle and the size of the population determines its dimensions
map.popColor3 <- ggplot(update_clean_data, aes(map_id = stateName))
map.popColor3 <- map.popColor3 +
 geom_map(map = us1, fill="white", color="black")
map.popColor3 <- map.popColor3 +
  expand_limits(x = us1$long, y = us1$lat)
map.popColor3 <- map.popColor3 +
  coord_map() + 
  ggtitle("Population Size by Circle dimension") +
  geom_point(data = update_clean_data, aes(x = long, y = lat), size =update_clean_data$population/5000000, color = "blue")
map.popColor3

#Step D: Create a zoomed in map of the Northeast 
map.popColor4 <- ggplot(update_clean_data, aes(map_id = stateName))
map.popColor4 <- map.popColor4 +
  geom_map(map = us1, fill="white", color="black")
map.popColor4 <- map.popColor4 +
  expand_limits(x = us1$long, y = us1$lat)
map.popColor4 <- map.popColor4 +
  #set the xlim and ylim to NYC center +/- 10
  coord_map(ylim = c(33.1361,53.1361),xlim = c(-85.1449,-65.1449)) + 
  ggtitle("Population Size by Circle dimension in Northeast Region") +
  geom_point(data = update_clean_data, aes(x = long, y = lat), size =update_clean_data$population/5000000, color = "blue")
map.popColor4
