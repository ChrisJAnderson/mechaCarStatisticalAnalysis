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
summary(mpgMlr)

#Deliverable 2
##Read suspension coil csv in
suspensionCoil <- read_csv("Suspension_Coil.csv")
##generate PSI summary as totalSummary
totalSummary<-suspensionCoil%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
##generate lot summary as lotSummary
lotSummary<-suspensionCoil%>%group_by(Manufacturing_Lot)%>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3
##t.test across all lots with population mean of 1500
t.test((suspensionCoil$PSI),mu=1500)
##lot 1 t.test
###defining a new vector for the subset argument
Lot1<-suspensionCoil%>%filter(suspensionCoil$Manufacturing_Lot=='Lot1')
###running t.test with subset argument- I don't believe this runs correctly,
###but it's commented below
####t.test((suspensionCoil$PSI),mu=1500,subset=Lot1$PSI)
##repeat of t.test with Lot2 vector (once again commented out)
Lot2<-suspensionCoil%>%filter(suspensionCoil$Manufacturing_Lot=='Lot2')
####t.test((suspensionCoil$PSI),mu=1500,subset=Lot2$PSI)
##repeat of t.test with Lot3 vector (commented below)
Lot3<-suspensionCoil%>%filter(suspensionCoil$Manufacturing_Lot=='Lot3')
####t.test((suspensionCoil$PSI),mu=1500,subset=Lot3$PSI)
##Here are the t-tests on the filtered dataframes which I ran for the readme
t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)