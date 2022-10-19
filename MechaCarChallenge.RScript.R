library(dplyr)
library(tidypredict)
library(ggplot2)
df1 <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
m1 <- lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=df1)

summary(m1)

summary(lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=df1)) #summarize linear model


## Deliverable 2
df2 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),sd=sd(PSI))

total_summary <- df2 %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),sd=sd(PSI))

## Deliverable 3
### Perform Welch Two Sample t-test
samp_lot1 = subset(df2, Manufacturing_Lot == "Lot1")
samp_lot2 = subset(df2, Manufacturing_Lot == "Lot2")
samp_lot3 = subset(df2, Manufacturing_Lot == "Lot3")
lot1_table <- samp_lot1 %>% sample_n(50)
lot2_table <- samp_lot2 %>% sample_n(50)
lot3_table <- samp_lot3 %>% sample_n(50)

#1&2
t.test((lot1_table$PSI),(lot2_table$PSI))
#1&3
t.test((lot1_table$PSI),(lot3_table$PSI))
#2&3
t.test((lot2_table$PSI),(lot3_table$PSI))

## Overall t-test
t.test(df2$PSI,mu = 1500)

### Perform t-test on Lot 1
t.test(samp_lot1$PSI,mu = 1500)

# Perform t-test on Lot 2
t.test(samp_lot2$PSI,mu = 1500)

# Perform t-test on Lot 3
t.test(samp_lot3$PSI,mu = 1500)


