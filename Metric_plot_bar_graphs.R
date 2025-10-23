install.packages("ggplot2")
library(ggplot2)
install.packages("patchwork")
library(patchwork)
getwd()
setwd("C:/Users/reddy/Dropbox/PC/Desktop/corrected data")

#Vol
Vol_R<-read.csv("Whole data.csv", header=TRUE)
str(Vol_R) 

p1<-ggplot(Vol_R,aes(x=Sex, y=Volume_R, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2")) +
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(40,65), breaks=seq(40,65, by=2)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Volume_R")

#Vol
Vol_L<-read.csv("whole data.csv", header=TRUE)
str(Vol_L) 

p2<-ggplot(Vol_L,aes(x=Sex, y=Volume_L, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(40,65), breaks=seq(40,65, by=2)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Volume_L")

p1+p2

#Lengths
Len_R<-read.csv("Whole data.csv", header=TRUE)
str(Len_R) 

p3<-ggplot(Len_R,aes(x=Sex, y=Length_R, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(260,360), breaks=seq(260,360, by=5)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Length_R(mm)")

#length
Len_L<-read.csv("Whole data.csv", header=TRUE)
str(Len_L) 

p4<-ggplot(Len_L,aes(x=Sex, y=Length_L, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(250,360), breaks=seq(250,360, by=5)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Length_L(mm)")

p3+p4


#Epi
Epi_R<-read.csv("Whole data.csv", header=TRUE)
str(Epi_R) 

p7<-ggplot(Epi_R,aes(x=Sex, y=Epi.breadth_R, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(40,70), breaks=seq(40,70, by=3)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Epicondylar breadth_R(mm)")

#Epi
Epi_L<-read.csv("Whole data.csv", header=TRUE)
str(Epi_L) 

p8<-ggplot(Epi_L,aes(x=Sex, y=Epi.breadth_L, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(40,70), breaks=seq(40,70, by=3)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Epicondylar breadth_L(mm)")

p7+p8

#Depth
Depth_R<-read.csv("Whole data.csv", header=TRUE)
str(Depth_R) 

p9<-ggplot(Depth_R,aes(x=Sex, y=Depth_R, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(5,15), breaks=seq(5,15, by=1)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Depth_R(mm)")

#Depth
Depth_L<-read.csv("Whole data.csv", header=TRUE)
str(Depth_L) 

p10<-ggplot(Depth_L,aes(x=Sex, y=Depth_L, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(5,15), breaks=seq(5,15, by=1)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Depth_L(mm)")

p9+p10

#Diameter
Diameter_R<-read.csv("Whole data.csv", header=TRUE)
str(Diameter_R) 

p11<-ggplot(Diameter_R,aes(x=Sex, y=Diameter_R, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(15,30), breaks=seq(15,30, by=2)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Diameter_R(mm)")

#Diameter
Diameter_L<-read.csv("Whole data.csv", header=TRUE)
str(Diameter_L) 

p12<-ggplot(Diameter_L,aes(x=Sex, y=Diameter_L, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(15,30), breaks=seq(15,30, by=2)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Diameter_L(mm)")

p11+p12


#height
hgt_R<-read.csv("Whole data.csv", header=TRUE)
str(hgt_R) 

p13<-ggplot(hgt_R,aes(x=Sex, y=Height_R, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(5,25), breaks=seq(5,25, by=2)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Height_R(mm)")

#Height
hgt_L<-read.csv("Whole data.csv", header=TRUE)
str(hgt_L) 

p14<-ggplot(hgt_L,aes(x=Sex, y=Height_L, fill=Sex)) +
  geom_boxplot()+
  scale_fill_manual(values=c("limegreen","steelblue2"))+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        legend.position = "none") +
  scale_x_discrete(labels=c("F","M")) +
  scale_y_continuous(limits=c(5,25), breaks=seq(5,25, by=2)) +
  stat_summary(fun = mean, geom="point", shape = 3) +
  xlab("Sex") + ylab("Height_L(mm)")

p13+p14




