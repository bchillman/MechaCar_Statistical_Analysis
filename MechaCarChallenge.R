# Part 1
library(dplyr)
library(tidyverse)
MechaCar_mpg <- read.csv("Data/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Part 2
Suspension_Coil <- read.csv("Data/Suspension_Coil.csv")
total_summary <- summarize(Suspension_Coil, Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')

# Part 3
t.test(Suspension_Coil$PSI, mu=1500)

lot1 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot1') %>% select(PSI)
lot2 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot2') %>% select(PSI)
lot3 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot3') %>% select(PSI)

t.test(lot1,mu=1500)
t.test(lot2,mu=1500)
t.test(lot3,mu=1500)