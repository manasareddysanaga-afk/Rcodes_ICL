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

#We'll use F-test to test for homogeneity in variances.
#This can be performed with the function var.test() as follow:
#lefts
res.ftest <- var.test(Volume_R~Sex, data =Basic)
res.ftest

Basic<-read.csv("Whole data.csv", header=T)
#T-TESTS
#rights
#volume
res <- t.test(Volume_R ~ Sex, data = Basic, var.equal = TRUE)
res
#Lengths
res <- t.test(Length_R ~ Sex, data = Basic, var.equal = TRUE)
res
#Epi.breadth
res <- t.test(Epi.breadth_R ~ Sex, data = Basic, var.equal = TRUE)
res
#Depth
res <- t.test(Depth_R ~ Sex, data = Basic, var.equal = TRUE)
res
#Diameter
res <- t.test(Diameter_R ~ Sex, data = Basic, var.equal = TRUE)
res
#Height
res <- t.test(Height_R ~ Sex, data = Basic, var.equal = TRUE)
res



#Lefts
#volume
res <- t.test(Volume_L ~ Sex, data = Basic, var.equal = TRUE)
res
#Lengths
res <- t.test(Length_L ~ Sex, data = Basic, var.equal = TRUE)
res
#Epi.breadth
res <- t.test(Epi.breadth_L ~ Sex, data = Basic, var.equal = TRUE)
res
#Depth
res <- t.test(Depth_L ~ Sex, data = Basic, var.equal = TRUE)
res
#Diameter
res <- t.test(Diameter_L ~ Sex, data = Basic, var.equal = TRUE)
res
#Height
res <- t.test(Height_L ~ Sex, data = Basic, var.equal = TRUE)
res


install.packages("rstatix")

library(tidyverse)
library(ggpubr)
library(rstatix)
Volume_R %>% cohens_d(Volume_R ~ Sex, var.equal = FALSE)

t.test(Basic$Volume_L~Basic$Sex)
