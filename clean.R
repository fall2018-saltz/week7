
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
cleanCensus
