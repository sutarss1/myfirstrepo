
#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality


####Top 10 rows and last 10 rows
head(airquality,5)  
tail(airquality) # by default 6 rows are displayed

######Columns
airquality[,c(1,2)] #all rows and cols 1&2

df<-airquality[,-6] #excluding colm 6
df
summary(airquality[,3]) # descriptive stats for the col 3 in dataset

airquality$Temp    # accessing colms using '$' 

summary(airquality$Ozone)

###########Summary of the data#########

summary(airquality) # summary statistics for all colms in dataset
summary(airquality$Wind) 

##################### Visualizations

plot(airquality$Wind)

#study the relationship between Temp and Wind

plot(airquality$Temp,airquality$Wind,type="p") #plot as points

plot(airquality$Wind,type="l") # plot as line

plot(airquality)
# points and lines 
plot(airquality$Wind, type= "b") # p: points, l: lines,b: both

plot(airquality$Ozone, xlab = 'No of Instances', 
     ylab = 'Ozone Concentration', main = 'Ozone levels in NY city',
     col = 'blue',type="p")
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Ozone,main="Boxplot", xlab = 'Ozone')
summary(airquality$Ozone)
boxplot.stats(airquality$Ozone)$out # check outliers

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
# mulitple boxplots causes some of them to look squeezed. 
# this is due to range to values, solution - plot individually

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o= yes bounding box needed, n= no box)

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Wind, type= "l")
plot(airquality$Solar.R, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,1:4], main='Multiple Box plots')

# you can export the plots as image/pdf


library(moments)
##Home work
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)
# R documentation site for help
#kurtosis
#Density plot
#var
#skewness














library(moments)
skewness(airquality$Ozone,na.rm=TRUE)

















qqnorm(airquality$Ozone)
qqline(airquality$Ozone)
hist(airquality$Ozone, breaks='FD')
plot(density(airquality$Ozone,na.rm=TRUE))