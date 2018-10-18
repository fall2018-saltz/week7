
library("ggplot2")
library("maps")
library("mapdata")
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
