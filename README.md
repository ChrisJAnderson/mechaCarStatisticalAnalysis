# mechaCarStatisticalAnalysis
## Linear Regression to Predict MPG
 ```  
 Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11  
```  
*All wheel drive, spoiler angle, and vehicle weight provided a non-random amount of variance to the mpg values in the dataset.
*The slope of the linear model is not considered to be zero, as our p-value is low and our r-squared shows strong correlation.
*This linear model does predict mpg of MechaCars effectively. With an r-squared value of .71, the model should be right a little less than 3 out of 4 times.  
## Summary Statistics on Suspension Coils
**Total Summary**  
![]()  
**Lot Summary**  
![]()  
We can see from the total summary that our variance is well within the 100 PSI variance of MechaCar, and from the mean and median we can tell the data is well distributed, not skewed to one side or another. Our SD is relatively small, so production is fairly consistent overall, with most vehicles being close to "average". Our total lot summary does meet MechaCar's design specifications.
However, our lot summary shows that lot 3 has poor quality compared to lots 1 and 2. Not only is it over MechaCar's tolerance for PSI variance, but its standard deviation is quite large by comparison to the other two lots. Investigating and correcting lot 3's operations will make our already acceptable overall summary more consistent than it already is.
Lot 1 and 2 meet MechaCar's design specifications, but Lot 3 does not- the variance of 170 is too high for MechaCar's standards.