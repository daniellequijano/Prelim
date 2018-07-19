##Q1
z <- 12
class(z)

##Q2
z <- c(12, FALSE)

##Q3
m <- c(10,13, 15, 33) 
n <- c(13, 22, 88, 110)
rbind(m, n)

##Q4
z <- list(22, "a", "c", FALSE)
z[[2]]


##Q5
z <- 10:40 
y <- 3
z + y

##Q6
x <- c(117, 114, 14, 15, 113, 112, 110) 
x[x >= 101] <- 14

##Q7
install.packages("data.table")
library("data.table")
sw_data<-fread('Desktop/hw1_data.csv')
names(sw_data)

##Q8
sw_data[c(1:12)]

##Q9
nrow(sw_data)

##Q10
tail(sw_data, 8)

##Q11
sw_data[112, Wind]
sw_data[42, Temp]
sw_data[82, Solar.R]

##Q12
sw = read.csv('Desktop/hw1_data.csv')
sub = subset(sw_data, is.na(Ozone))
nrow(sub)

sw = read.csv('Desktop/hw1_data.csv')
sub = subset(sw_data, is.na(Solar.R))
nrow(sub)

sw = read.csv('Desktop/hw1_data.csv')
sub = subset(sw_data, is.na(Wind))
nrow(sub)

sw = read.csv('Desktop/hw1_data.csv')
sub = subset(sw_data, is.na(Temp))
nrow(sub)


##Q13
hw1 = read.csv('Desktop/hw1_data.csv')
sub = subset(hw1, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean) 

hw1 = read.csv('Desktop/hw1_data.csv')
sub = subset(hw1, !is.na(Wind), select = Wind)
apply(sub, 2, mean) 

hw1 = read.csv('Desktop/hw1_data.csv')
sub = subset(hw1, !is.na(Temp), select = Temp)
apply(sub, 2, mean) 


##Q14
sw_data = read.csv('Desktop/hw1_data.csv')
sub = subset(sw_data, Ozone > 26 & Temp > 80, select = Solar.R)
apply(sub, 2, mean)


##Q15
sw_data = read.csv('Desktop/hw1_data.csv')
sub = subset(hw1, Month == 6|8, select = Temp)
apply(sub, 2, mean)

##Q16
sw_data = read.csv('Desktop/hw1_data.csv')
sub = subset(sw_data, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
