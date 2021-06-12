getwd()
setwd("C:\\Users\\980026\\Documents")

df_House_Price <- read.csv('house_price.csv')
df_House_Price

install.packages("ggplot2")

#importing package Data Visualization
library(ggplot2)

ggplot(df_House_Price, aes(x = GarageArea, y = SalePrice)) +
    geom_point()

#Plot without grouping based on Garage Type
ggplot(df_House_Price, aes(x = GarageArea, y = SalePrice)) +
    geom_point(aes(color = factor(GarageCond)))
