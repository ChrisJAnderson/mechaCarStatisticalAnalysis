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
![](https://github.com/ChrisJAnderson/mechaCarStatisticalAnalysis/blob/main/Resources/TotalSummary.png)  
**Lot Summary**  
![](https://github.com/ChrisJAnderson/mechaCarStatisticalAnalysis/blob/main/Resources/LotSummary.png)  
We can see from the total summary that our variance is well within the 100 PSI variance of MechaCar, and from the mean and median we can tell the data is well distributed, not skewed to one side or another. Our SD is relatively small, so production is fairly consistent overall, with most vehicles being close to "average". Our total lot summary does meet MechaCar's design specifications.
However, our lot summary shows that lot 3 has poor quality compared to lots 1 and 2. Not only is it over MechaCar's tolerance for PSI variance, but its standard deviation is quite large by comparison to the other two lots. Investigating and correcting lot 3's operations will make our already acceptable overall summary more consistent than it already is.
Lot 1 and 2 meet MechaCar's design specifications, but Lot 3 does not- the variance of 170 is too high for MechaCar's standards.
## T-Test on Suspension Coils
**PSI T Test across all lots**
```
One Sample t-test

data:  (suspensionCoil$PSI)
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
```
Here I ran a t-test on the psi across all lots to see if our mean was statistically different from the population mean of 1500, with the null hypothesis that the average will not be statistically different, based on our earlier analysis which kept lots 1, 2, and 3 in line with MechaCar's standards for manufacturing.
This t-test does not give us evidence to reject our null hypothesis, with a p-value of .06. A p-value of under .05 would have caused me to consider the alternative hypothesis (true mean is not equal to 1500) instead.  
  
**PSI T Test on Lot 1**
```
One Sample t-test

data:  Lot1$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
```
I attempted to run a t-test on the data with a subset of lot 1, and produced the exact same results as the t-test across all lots. What you'll see in my code is that instead of using the subset argument, which I attempted, I simply used the vectors I had created to use as a subset to run t-tests on instead. I'm unsure if this will provide the expected results, but I'll argue based off of those findings. Lot1 is perfectly in line with our population mean of 1500, with a p-value of 1. We do not reject our null hypothesis based on this t-test.  
  
**PSI T Test on Lot 2**
```
	One Sample t-test

data:  Lot2$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
```
our p-value for the t-test on lot 2's PSI is also high enough that we do not reject our null hypothesis that the true mean is equal to 1500.  

**PSI T Test on Lot 3**
```

	One Sample t-test

data:  Lot3$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
```
As suspected based on earlier findings, lot 3 is not in line with our population mean, with a p-value of .04, below the .05 I would want to see at minimum to confirm our null hypothesis.
Therefore we consider the alternative hypothesis, that the true mean is not equal to 1500- someone should probably go take a look at what's going on in lot 3 before MechaCar has to recall product.
