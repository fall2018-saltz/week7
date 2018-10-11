
library(ggplot2)

#Create a scatter plot
# first name the variable
murder_data_scatter<- ggplot(clean_data, aes(x=population,y=percentOver18))
murder_data_scatter<- murder_data_scatter + geom_point(aes(size=Murder,color=Murder))
murder_data_scatter
