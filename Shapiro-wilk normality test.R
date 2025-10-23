install.packages("ggplot2")
library(ggplot2)
install.packages("ggarrange")
library(ggarrange) 

#data manipulation
install.packages("dplyr")
library(dplyr)     

# for an easy ggplot2-based data visualization
install.packages("ggpubr")
library(ggpubr)

getwd()
setwd("C:/Users/reddy/Desktop/TBE Project/t-tests")

#import the data
Basic<-read.csv("Master_Data.csv", header=T)
str(Basic)
head(Basic)

#The R function shapiro.test() can be used to perform 
#the Shapiro-Wilk test of normality for one variable (univariate):
#rights
shapiro.test(Basic$Volume_R)
shapiro.test(Basic$Length_R)
shapiro.test(Basic$Epi.breadth_R)
shapiro.test(Basic$Depth_R)
shapiro.test(Basic$Diameter_R)
shapiro.test(Basic$Height_R)

#lefts
shapiro.test(Basic$Volume_L)
shapiro.test(Basic$Length_L)
shapiro.test(Basic$Epi.breadth_L)
shapiro.test(Basic$Depth_L)
shapiro.test(Basic$Diameter_L)
shapiro.test(Basic$Height_L)

