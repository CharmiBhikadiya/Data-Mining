#Course      :  CS-513
#First_Name  :  Charmi
#Last_Name   :  Bhikadiya
#ID          :  10412409

# HW 5.1

# 1."Hierarchical Clustering in R and the "average" linkage method to cluster the following  10 items

rm(list=ls())

# creating vectors x and y
x <- c (7,10,13,21,28,28,35,43,44,50)
y <- c (57,62,63,71,78,88,89,90,94,98)
xy<-cbind(x,y)

#euclidean distance 
dxy <- dist(xy)

# hierarchical cluster with "average" linkage method
HC <- hclust(dxy, method="average")
plot(HC)

