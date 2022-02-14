# MechaCar_Statistical_Analysis


## Purpose 

-This is about a special project in AutosRUs.

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.


-Tasks
1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots 
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population 
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Deliverable 1: Linear Regression to Predict MPG

Statistical Summary: 

![GitHub Logo](https://raw.githubusercontent.com/yumik20/MechaCar_Statistical_Analysis/main/MachaCar_1.png)




As you can see from the analysis from the screenshot, 

1. The vehicle length, and vehicle ground clearance provides non-random amounts of variance to the model. In other words,length and ground clearance of the vehicle have significant impact on miles per gallon (mpg) on the MechaCar prototype. The other variables are likely to be irrelevant. 


2. The p-Value for this model, p-Value: 5.35e-11, which is 0.0000000000535. This is much smaller than significance level of 0.05%, and even smaller than 0.005%. This indicates there is sufficient evidence to reject our null hypothesis, meaning the slope of this linear model is not zero.


3. This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be explainable by this model. Usually if a r-squared is above 0.7 then it can be seen as showing a high level of correlation, we could say this linear model predict mpg of MechaCar prototypes effectively. However, if the car company would like to have a higher standard of 0.9%, they can try remove the irrelevant variables and only use the vehicle length, and vehicle ground clearance to calculate the new r-squared.  


## Summary Statistics on Suspension Coils

Regarding the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Let's see if our current design qualified. 

First, let's look at the lots in total: 
![GitHub Logo](https://raw.githubusercontent.com/yumik20/MechaCar_Statistical_Analysis/main/total_summary.png)\
As we can see, the variance for the Toal is about 62.29 and it is smaller than 100.


Then let's take a look at per lot:
![GitHub Logo](https://raw.githubusercontent.com/yumik20/MechaCar_Statistical_Analysis/main/lot_summary.png)\
For Lot1 and Lot2, the current current manufacturing data do meet this design specification, however for Lot3, the variance is about 170.29 and it is larger than 100. So Lot 3 do not meet this specification. 



## T-Tests on Suspension Coils

![GitHub Logo](https://raw.githubusercontent.com/yumik20/MechaCar_Statistical_Analysis/main/T-test_total.png)\
From above, we can see the mean is 1498.78, which is lower than 1500, and the p-value of 0.06028 is higher than the common significance level of 0.05, so it is not enough evidence to reject the null hypothesis that the total is statistically different from the population mean of 1,500 pounds per square inch.


![GitHub Logo](https://raw.githubusercontent.com/yumik20/MechaCar_Statistical_Analysis/main/T-test_each_lot.png)\
For L1, the mean is exactly 1500 and p value is 1, so we can not reject the null hypothesis that L1 is statistically different from the population mean of 1,500 pounds per square inch.

For L2, the mean is 1500.2 and p-value is 0.6072. We can not reject the null hypothesis that L2 is statistically different from the population mean of 1,500 pounds per square inch.

For L3, the mean is 1496.14 and p-value is 0.04168, which is smaller than the 0.05, so we can reject the null hypothesis and say L3 is smaller than the population mean of 1,500 pounds per square inch.


##   Study Design: MechaCar vs Competition

-What metric or metrics are you going to test?
Metrics:
1. Pricing 
2. Safety 
3. MPG 

-What is the null hypothesis or alternative hypothesis?
Null hypothesis for safety and MPG, alternative hypothesis for pricing. 

-What statistical test would you use to test the hypothesis? And why?
Use a multiple linear regression to test the pricing to see what are the factors that drive pricing. 

-What data is needed to run the statistical test? 
1. A few competitors' pricing data for a few years. 
2. Data related to safety, such as reported incidence numbers, car weight, car length etc. 
3. Competitor's MPG and car info. 




