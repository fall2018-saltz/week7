
library(ggplot2)
#Create a box plot for population
pop_box_plot <- ggplot(clean_data, aes(x = "", y = population)) + 
  geom_boxplot() + 
  theme(axis.title.x = element_blank())
pop_box_plot

#Create a box plot for murder rate
murder_box_plot<-ggplot(clean_data, aes(x = "", y = Murder)) + 
  geom_boxplot() + 
  theme(axis.title.x = element_blank())
murder_box_plot

# #Visualization helpfulness
#  I believe  the vizualtiaon that is most helpful is the boxplot for the murder
#  rate because the numbers are small and easy to read. For the population the histogram
#  is better because you can see where most states population amonts are under 3 million.

