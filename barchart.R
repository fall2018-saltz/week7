
library(ggplot2)
#Calculate number of murders by state
murders_each_state<- clean_data$Murder*(clean_data$population/100000)
murders_each_state
state<-as.character(clean_data$stateName)
#combine the dataframe
murders_per_state<-as.data.frame(cbind(state,murders_each_state))
#View(murders_per_state)

# Create a bar chart with the number of murders per state
murder_bar_chart<-ggplot(murders_per_state,aes(x=state, y=murders)) +
  geom_col()
murder_bar_chart

# Create a bar chart with the number of murders per state on the adjusted axis
murder_bar_chart2<-ggplot(murders_per_state,aes(x=state, y=murders)) +
  geom_col() + 
  ggtitle("Total Murders") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
murder_bar_chart2


# Create a bar chart with the number of murders per state on the x axis and sort the murder rate
# Create a new dataframe with sorted murder data
murder_data<-murders_per_state[order(murders_per_state$murders, decreasing= TRUE),]
#create rows at 1
rownames(murder_data)<-NULL
#Create the bar graph
murder_bar_chart3<-ggplot(murder_data,aes(x=reorder(state,-murders), y=murders)) +
  geom_bar(stat = "identity") + 
  ggtitle("Total Murders") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
murder_bar_chart3

#Create a bar graph where the fill is percentOver18
#create dataframe to put popOver18 with murder_data
murder_data$popOver18<-clean_data$popOver18
#bar graph
murder_bar_chart4<-ggplot(murder_data,aes(x=reorder(state,-murders), y=murders, group= 1, fill=popOver18)) +
  geom_bar(stat = "identity") + 
  ggtitle("Total Murders") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
murder_bar_chart4

