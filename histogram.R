
library(ggplot2)
# Basic histogram for popoulation 
pop_hist<-ggplot(clean_data, aes(x=population)) +
  #30 for bins with count on y-axis and x-axis as population size
  geom_histogram(bins=30, color="black", fill="white")
#show histogram
pop_hist

#just for practice
pop_hist1<-ggplot(clean_data, aes(x=population)) +
  #100000 width for bins with count on y-axis and x-axis as population size
  geom_histogram(binwidth=1000000, color="black", fill="white") 
pop_hist1

# Histogram for the Murder rate 
murder_rate<-ggplot(clean_data, aes(x=Murder)) +
  #15 bins with count on y-axis and x-axis as murder rate
  geom_histogram(bins=15, color="blue", fill="white") 
murder_rate

# Histogram for the Assaulut rate 
assault_rate<-ggplot(clean_data, aes(x=Assault)) +
  #30 bins with count on y-axis and x-axis as Assault rate
  geom_histogram(bins=30, color="red", fill="white") 
assault_rate

# Histogram for the UrbanPop number 
urban_pop<-ggplot(clean_data, aes(x=UrbanPop)) +
  #25 bins with count on y-axis and x-axis as Urban Population
  geom_histogram(bins=25, color="green", fill="white")
urban_pop

#Histogram for the Rape count by
rape<-ggplot(clean_data, aes(x=Rape)) +
  #20 bins with count on y-axis and x-axis as rape 
  geom_histogram(bins=20, color="purple", fill="white") 
rape
