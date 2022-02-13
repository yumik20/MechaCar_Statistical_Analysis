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

