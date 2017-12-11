rm(list =ls())

# 2.1
# create the following x and y vectors:
# x=1,2,3
# y=11,12,13,14,15,16
x<-c(1,2,3)
x
y<-c(11,12,13,14,15,16)
y

# 2.2
# calculate and display z=x+y
z<-x+y
z
 
# 2.3 
# explain the results
# answer: z is a summetion of vecter x and y

# 2.4, 2.4 and 2.6
# Create a vectore of your last name
# Create a vectore of your first name
# Create a vectore of your student ID 
last_name<-"Bhikadiya"
last_name
first_name<-"Charmi"
first_name
id<-10412409

# 2.7 
# what are the length and data type of the "last_name" vector?Why?
length(last_name)# it counts one word in object "last_name" which is "Bhikadiya" 
mode(last_name) # it shows the data type of object "last_name"  

# 2.8 and 2.9
# Combine your first naem, last name and student id into a single vectore("myinfo").
# display myinfo in the console
myinfo<-c(last_name, first_name, id)
myinfo

# 2.10
# What are the length and data type of "myinfo"?
length(myinfo)
mode(myinfo)

# 2.11 remove the first name object.#
rm(first_name)


# 2.12 Display "myinfo" in the console again.
myinfo

# 2.13 create a dataframe  "roster" using the following table:
# First   Last    ID
# fname1  lname1 1111
# fname2  lname2 2222
roster<- data.frame(First=c("fname1,fname2"),Last=c("lname1","lname2"),ID=c(1111,2222))


# 2.14 View the "roster".
View(roster)

# 2.15 Export the data frame "roster" to a csv file.
write.csv( roster  ,file="c://roster.csv",row.names=FALSE )

# 2.16 Import and view the following csv file:           
# http://www.math.smith.edu/sasr/datasets/help.csv
dsource <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")
View(dsource)

# 2.17 Remove all the objects in your session.
rm(list=ls())


