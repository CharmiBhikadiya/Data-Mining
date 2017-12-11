## Homework #3

## Charmi Bhikadiya

## id:10412409

## remove all objects
rm(list=ls())

## Load the following CSV file to your R environment
dataset <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")
attach(dataset)

## create a dataframe of: id, pcs1, mcs1, substance, and race group
dataset1 <- data.frame(id, pcs1, mcs1, substance, racegrp)
View(dataset1)

## Calculate: Mean
mean(dataset1$mcs1, na.rm = TRUE)

## Calculate: Max
max(dataset1$mcs1, na.rm = TRUE)

## Calculate: min
min(dataset1$mcs1, na.rm = TRUE)

## Calculate: STD
sd(dataset1$mcs1, na.rm = TRUE )

## Create a frequency table of substance vs. racegroup
table(substance,racegrp)

## Substitute the missing values of mcs1 by the overall average
mean_mcs1 <- mean(dataset1$mcs1, na.rm = TRUE)
dataset1$mcs1[is.na(dataset$mcs1)] <- mean_mcs1
View(dataset1)


