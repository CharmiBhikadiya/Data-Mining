#Course      :  CS-513
#First_Name  :  Charmi
#Last_Name   :  Bhikadiya
#ID          :  10412409

# HW 5.2


# clustering customers into 3 groups using k means clustering algorithm based on:
# International Plan, Voice Plan and  customer service calls 

rm(list=ls())

# Reading churn dataset into the R environment
churndata<-read.csv("C:/Users/charmi/Documents/R/churn.csv")
View(churndata)

# Converting categorical values to binary values, because there is no trouble while calculating distances if it is in binary. 
International_Plan<-ifelse(churndata$Int.l.Plan=='yes',1,0)
Voice_Plan<-ifelse(churndata$VMail.Plan=='yes',1,0)
# no need to convert Customer Service call, its already in binary.


# Normalizing the dataset
mnnorm <- function(x,min,max)
{
  z<- ( (x- min(x)) / (max(x) - min(x)))
  return(z)
}
Customer_Service_Calls <- mnnorm(churndata[,20],min(churndata[,20]),max(churndata[,20]))

normalized_data<-cbind(International_Plan,Voice_Plan,Customer_Service_Calls)
View(normalized_data)

# applying k-means clustering on the normalized data 
c1<-kmeans(normalized_data,3,nstart=25)

# Represents the clustering results
c1










