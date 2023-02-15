# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
Our first analysis of the MechaCar data was to attempt to determine which variables we can conclude had a non-random amount of variance to the MPG of the MechaCar. A linear regression was done with the MPG as the dependent variable, and vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD as independent variables. The result of this regression can be seen below:
<p align="center">
<img src="https://github.com/bchillman/MechaCar_Statistical_Analysis/blob/main/Images/analysis_summary.png" width="381" height="218">
</p>
From this regression, we can see that there are two variables that pass any confidence test of 0.05 or lower, which we can fairly confidently say add non-random variance to the MPG: vehicle length and ground clearance. Because we have a p-value for the regression as a whole of 5.35e-11, we can fairly confidently say that the slope of this model is not 0, as this p-value passes almost any confidence test we might use. This linear model does fairly effectively model the MechaCar's MPG, as the R squared value for the model is 0.683. Since the y-intercept is not zero, however, there is at least some predictive parameter that we are not using in our model.

## Summary Statistics on Suspension Coils
Specifications for the MechaCar indicate that it is important that the variance of the pressure in suspension coils does not exceed 100 pounds per square inch (PSI). Thus, we analyzed the suspension coils from three different manufacturing lots to make sure they pass this test. Before looking at each lot individually, we looked at the total sample from all three lots. The summary information of the suspension coil pressure from this group can be seen below:
<p align="center">
<img src="https://github.com/bchillman/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png" width="224" height="44">
</p>
As we can see, the variance is 62.3 PSI, lower than 100. However, we can also check the variance from each lot individually, with the understanding that a lower sample size may lead to higher variance:
<p align="center">
<img src="https://github.com/bchillman/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png" width="343" height="76">
</p>
From this breakdown, we can see that lots 1 and 2 have very little variance, with lot 1 having a variance of less than 1 PSI and lot 2 having less than 10 PSI, both safely under the 100 PSI goal set for the MechaCar. Lot 3, however, has a variance of 170 PSI, which is far higher than the goal. This would indicate that lot 3 may have manufacturing issues when it comes to their suspension coils.

## T-Tests on Suspension Coils
To further test the suspension coils, we expect that the population mean for pressure in these coils is 1500 PSI. We can thus do a t-test on samples from each lot, as well as the combined group of samples to make sure that they do not significantly deviate from this number. These t-tests will compare the mean of a sample to an expected mean, and allow us to determine if that difference is likely due to random variance or not. First we looked at all vehicles made from all three lots combined. This can be seen below:
<p align="center">
<img src="https://github.com/bchillman/MechaCar_Statistical_Analysis/blob/main/Images/All_Lots_ttest.png" width="335" height="95">
</p>
This t-test tells us that the mean of the pressure of all of the suspension coils is 1498.8 PSI, slightly lower than expected. This difference has a probability of 0.06 of being due to random variance. While this does not pass our confidence test of 0.05, it still gives us some indication that there may be some non-random variance somewhere in the data. To further investigate, we can do the same t-test for the three lots seperately. These can be seen below:
<p align="center">
<img src="https://github.com/bchillman/MechaCar_Statistical_Analysis/blob/main/Images/Lot1_ttest.png" width="331" height="135">
</p>
<p align="center">
<img src="https://github.com/bchillman/MechaCar_Statistical_Analysis/blob/main/Images/Lot2_ttest.png" width="331" height="135">
</p>
<p align="center">
<img src="https://github.com/bchillman/MechaCar_Statistical_Analysis/blob/main/Images/Lot3_ttest.png" width="331" height="135">
</p>
Our samples from lots 1 and 2 have means very close to the expected mean and very safely pass our t-tests, with p-values of 1 and 0.607. Our sample from lot 3, however, does show significant variance. Its mean of 1496 PSI is far enough away from the expected mean of 1500 that the t-test has a p-value of 0.0417, which does not pass the 0.05 confidence test. This provides more evidence that the manufacturing at lot 3 does not meet the expected standards, while the manufacturing at lots 1 and 2 do.

## Study Design: MechaCar vs Competition
In order to fully identify the success of the MechaCar, it is paramount to compare it to other cars of similar size from other manufacturers. The first test we will run is to compare highway fuel efficiency of the MechaCar to similar cars built by competitors. Highway fuel efficiency is likely to be less variable and less dependent on the city and circumstances as city fuel efficiency. The alternative hypothesis for this test will be that the MechaCar has better highway fuel efficiency than similarly modeled cars built by competitors. In order to test this, we will run an ANOVA test, since we will be comparing means of multiple different samples. Alternatively, since we may not care how the competitors compare to each other, we can run t-tests between the MechaCar and each competitor, but keeping in mind that running multiple tests is more likely to produce significant results. In order to run this test we need to choose a car from each competitor and from a sample of each car get the highway mpg values. Ideally, all of our samples will be from the same city or region so as to reduce the number of potential variables that we encounter.
<br/> <br/>
Second, we will run a test to compare the horse power of the MechaCar to its competitors. Since horse power is often inversely correlated with fuel efficiency, if the MechaCar performs well in both of these tests, it will demonstrate its quality. This test will be fairly similar to the previous, and the alternative hypothesis will be that the MechaCar has more horse power than similarly modeled cars built by competitors. Once again, we will run an ANOVA test, but can alternatively run multiple t-tests where we just compare the MechaCar with its competitors and not competitors with each other. Finally, we will once again need a sample of these competing cars and we will need to obtain a horse power value for each, which can be obtained using similar testing methods.
