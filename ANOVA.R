#ANOVA - Week 2 
# https://datascienceplus.com/wp-content/uploads/2017/08/tyre.csv

#HO: Uapollo = Ubridgestone = Uceat = U Falken
#H1: Uapollo != Ubridgestone != Uceat != U Falken

#tyre data set
tyre <- read.csv("https://datascienceplus.com/wp-content/uploads/2017/08/tyre.csv")

#visualise 
boxplot(tyre$Mileage, 
        horizontal = FALSE,
        main = "Mileage Distribution",
        col = "blue")

#4 seperate box plots by brand
boxplot(tyre$Mileage~tyre$Brands, 
        horizontal = FALSE,
        main = "Boxplot comparing Mileage of 4 Brand of Tyres",
        col = rainbow(4))


#ANOVA Test
tyresAnova <- aov(Mileage ~ Brands, tyre)
summary(tyresAnova)

#Tukey Test
TukeyHSD(tyresAnova)



#F value (test statistic) = 17.94
#if P < Alpha we reject HO, if P > Alpha we fail to reject HO
# * means we can reject at that alpha value
# F(3,56) = 17.94, p < 0.05




