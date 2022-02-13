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


