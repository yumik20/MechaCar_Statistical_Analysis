#1. Use the library() function to load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha <- read.csv(file='~/Desktop/BootCamp/Week15-R/R_Analysis/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
mecha

#Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
multi.fit =lm(formula = mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha)


#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(multi.fit)

#Deliverable 2 
#importe Suspension_Coil.csv and read into a dataframe 
suspension <- read.csv(file="~/Desktop/BootCamp/Week15-R/R_Analysis/MechaCar_Statistical_Analysis/Suspension_Coil.csv",check.names=F,stringsAsFactors = F) 

# creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <-suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),StDev=sd(PSI))

# creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <-suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI))

#Deliverable 3
#write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension$PSI, mu=1500)


#using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

t.test(subset(suspension, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
