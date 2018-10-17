
## Homework 7 Submitted by Benjamin Allen on October 17th, 2018
## 
#Part of this code is taken from week 6 slides
#Part of the code is help from Professor Saltz
#Part of the code is from Introduction to Data Science Book
#Part of this code taking from Stack Overflow
## https://stackoverflow.com/questions/35681614/error-when-making-a-simple-boxplot-with-ggplot2
#https://stackoverflow.com/questions/10941225/horizontal-barplot-in-ggplot2
# # but the comments are all original.
new_raw_data<-raw_data
dim(raw_data)
readStates<-function(new_raw_data)
{
  #delete 53rd row
  new_raw_data<- raw_data[-53,]
  #delete 1st row
  new_raw_data<-new_raw_data[-1,]
  #str(new_raw_data)
  #remove first four columns
  new_raw_data<- new_raw_data[,-1:-4]
  #change the names for the remaining columns
  colnames(new_raw_data)<-c("stateName","population", "popOver18", "percentOver18")
  
  return(new_raw_data)
}
cleanCensus<-readStates(new_raw_data)
#create a dataframe of arrests data
arrests<-USArrests
#make a combined dataframe of arrests and cleanCensus data
#str(arrests)
#str(cleanCensus)

#arrests[1:10,]
#cleanCensus[1:10,]

#delete District of Columbia row
cleanCensus<-cleanCensus[-9,]
#cleanCensus[1:10,]

#reset rownumbers
rownames(cleanCensus)<-NULL
#cleanCensus[1:10,]
#arrests[1:10,]

#merge dataframes using merge 
clean_data<-cbind(cleanCensus,arrests)
clean_data
