#Dependencies
library(dplyr)
library(readr)
library(tidyverse)
#Deliverable 1
##Read mpg csv in
mechaCar<-read_csv(file='MechaCar_mpg.csv')
##Run multiple linear regression for mpg csv with mpg as y, all others as x as mpgMlr
mpgMlr=lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length,data=mechaCar)
##generate summary of mpgMlr
summary(MpgMlr)

#Deliverable 2
##Read suspension coil csv in
suspensionCoil <- read_csv("Suspension_Coil.csv")
##generate PSI summary as totalSummary
totalSummary<-suspensionCoil%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
##generate lot summary as lotSummary
lotSummary<-suspensionCoil%>%group_by(Manufacturing_Lot)%>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))