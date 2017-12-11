# course: CS-513
# First name: Charmi
# Last name: Bhikadiya
# id: 10412409

rm(list=ls())

# load the IRIS dataset
data()
data(iris)
View(iris)

# storeing every 5th record in "test" dataset and rest are in "training" dataset starting with the 1st
data<-seq(from=1,to=nrow(iris),by=5)
test<-iris[data, ]
training<-iris[-data, ]

library(class)
# use knn to classify the data
# use the knn with k=1,k=2,k=5,k=10

inputvalues<-training[,-5]
testvalues<-test[,-5]
outcomevalues<-training[,5]

#R1 <- knn(inputvalues,testvalues,outcomevalues)
 R1 <- knn(training[,-5],test[,-5],training[,5],k=1)
 R1

 result1<-table(R1=R1,Test=test[,5])
 result1  # performance of knn with k=2
          # here error rate is 0.0333, comes from 1/30 for test dataset because in R1,
          # there is 9 versicolor instead of 10, so error rate is 1 out of 30.
          # so,error rate is 0.0333
 
 R2 <- knn(training[,-5],test[,-5],training[,5],k=2)
 R2
 
 result2<-table(R2=R2,Test=test[,5])
 result2 # performance of knn with k=2
         # here error rate is 0.0666, comes from 2/30 for test dataset because in R2,
         # there is 9 versicolor and 9 virginica instead of 10, so error rate is 2 out of 30. 
         # so, error rate is 0.0666
 
 R5 <- knn(training[,-5],test[,-5],training[,5],k=5)
 R5   
 
 result5<-table(R5=R5,Test=test[,5])
 result5  # performance of knn with k=2
          # here error rate is 0.0333, comes from 1/30 for test dataset because in R5,
          # there is 9 versicolor instead of 10, so error rate is 1 out of 30. 
          # so, error rate is 0.0333
 
 
 R10 <- knn(training[,-5],test[,-5],training[,5],k=10)
 R10
 
 result10<-table(R10=R10,Test=test[,5])
 result10   # performance of knn with k=2
            # here error rate is 0.0333, comes from 1/30 for test dataset because in R10,
            # there is 9 versicolor instead of 10, so error rate is 1 out of 30. 
            # so, error rate is 0.0333
 

 