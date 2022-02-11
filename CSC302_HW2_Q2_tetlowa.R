#Austin Tetlow
#HW2

library(dplyr)

df = read.csv("C:/Users/Root User/Downloads/WorldCupMatches.csv", header=T)

#Question 2
#a) Find the size of the data frame. How many rows, columns?
nrow(df)
ncol(df)

#b)
#Use summary function to report the statistical summary of your data.
summary(df)

#c)
#Find how many unique location olympics were held at
unique(df$City)

#d)
#Find the average attendance.
summarise(df, Average = mean(Attendance, na.rm = T))

#e)
#For each Home Team, what is the total number of goals scored?
aggregate(df$Home.Team.Goals, by=list(df$Home.Team.Name), FUN=sum)

#f)
# What is the average number of attendees for each year?
#Is there a trend or pattern in the data in that sense?
aggregate(df$Attendance, by=list(df$Year), FUN=mean)

#The trend I see is that the number of average attendees
#slowly increases throughout the decades


