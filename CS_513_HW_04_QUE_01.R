#Course      :  CS-513
#First_Name  :  Charmi
#Last_Name   :  Bhikadiya
#ID          :  10412409

#Please use the "Hierarchical Clustering in R and the "average" linkage method to cluster the following  10 items

rm(list=ls())

#1.Hierarchical Clustering in R and the "average" linkage method to cluster the 10 items
x <- c (7,10,13,21,28,28,35,43,44,50)
y <- c (57,62,63,71,78,88,89,90,94,98)

temp <- c(x,y)
temp

temp_distance <- dist(temp)
temp_distance

HC <- hclust(temp_distance, method="average")
plot(HC)