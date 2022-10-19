# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
We modeled miles per gallon(mpg) as dependent variable against multiple metrics,
such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance,
were collected for each vehicle as predictors(independent variables) using linear
regression. The output of the multiple linear regression is shown in Table 1:
 
 ![image](https://github.com/Elfreda2019/MechaCar_Statistical_Analysis/blob/main/resources/fig1.png)
 Table 1
 
 
 From the results, there is statistical evidence that at least one of the multiple metrics
have significant effect on MPG (F (5,44) =22.07, p&lt;0.05). In Table 1, the significant metrics
are ground clearance (p&lt;0.05) and vehicle length (p&lt;0.05) with an R-square value of
0.7149. These two metrics have positive effects on the mpg, explaining about 71.5% of
the total variations in mpg. An R-square value of about 71.5% shows a good model to
predict mpg.

## Summary Statistics on Suspension Coils

From the results of total summary, the distribution of weight capacities of multiple
suspension coils across the lots looks symmetric because the mean is approximately
equal to the median. Based on the design requirement, current manufacturing data
meet this design specification for all manufacturing lots in total.

 
![image](https://github.com/Elfreda2019/MechaCar_Statistical_Analysis/blob/main/resources/fig2.png)

Table 2
 
 From the results of lots summary, the current manufacturing data meet this design
specification for lots 1 and lot 2 but not for lot 3 which has variance exceeding 100
pounds per square inch.

![image](https://github.com/Elfreda2019/MechaCar_Statistical_Analysis/blob/main/resources/fig3.png)
Table 3
 
 ## T-Tests on Suspension Coils
 
 T-test was conducted to compares all manufacturing lots against mean 1500 PSI of the
population. We test the claim that the overall mean PSI is different from the population
mean of 1,500 pounds per square inch. The results shows that the overall mean PSI is
not significantly different from the population mean of 1500 (t = -1.8931, df = 149, p-
value = 0.06028), where p&gt;0.05.
T-test was conducted for each individual lot, whether mean PSI are statistically different
from the population mean of 1,500 pounds per square inch.
### Perform t-test on Lot 1
The results shows that the mean PSI in lot1 is not significantly different from the
population mean of 1500 (t = 0, df = 49, p-value = 1), where p&gt;0.05.
### Perform t-test on Lot 2
The results shows that the mean PSI in lot2 is not significantly different from the
population mean of 1500 (t = 0.51745, df = 49, p-value = 0.6072), where p&gt;0.05.
### Perform t-test on Lot 3
The results shows that the mean PSI in lot3 is significantly different from the population
mean of 1500 (t = -2.0916, df = 49, p-value = 0.04168), where p&lt;0.05.

The results shows that the mean PSI in lot3 is significantly different from the population
mean of 1500 (t = -2.0916, df = 49, p-value = 0.04168), where p&lt;0.05.

## Study Design: MechaCar vs Competition.

To compare performance of the MechaCar vehicles against performance of vehicles
from other manufacturers, we would prefer to use highway fuel efficiency. In literature,
vehicle fuel economy is measured by miles per gallon of fuel (mpg). We will assume
that there are k manufactures of vehicle of same types from MechaCar.
The null and alternative hypotheses states that:
Ho: μ 1 = μ 2 =…= μ k

Ha: At least μ i =/= μ j for some i and j in k

The appropriate statistical test to adopt is the ANOVA F-test, which test whether there is
differences in the mean mpg across the k manufacturers, with the hope of the mean
mpg from MechaCar been the least among multiple comparison tests.
The data to be used should have possibly two columns with column 1 labeled ‘ManID’
and column 2 labeled ‘vehicles_mpg’. The data should be a csv file readable in R.
