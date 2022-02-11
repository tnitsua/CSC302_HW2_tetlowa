#Austin Tetlow
#HW2

library(dplyr)
library(tidyverse)

df = read.csv("C:/Users/Root User/Downloads/metabolite.csv", header=T)

#Question 3
#a) Find how many Alzheimers patients there are in the data set.
length(which(df$Label == 'Alzheimer'))

#b) Determine the number of missing values for each column.
colSums(is.na(df))

#c) Remove the rows which has missing value for the Dopmaine column
#and assign the result to a new data frame.
df1 = df[!is.na(df$Dopamine),]

#d) In the new data frame, replace the missing values in the c4-OH-Pro
#column with the median value of the same column
df1$c4.OH.Pro[is.na(df1$c4.OH.Pro)]<-mean(df1$c4.OH.Pro, na.rm = T)
