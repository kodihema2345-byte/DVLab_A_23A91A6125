data(diamonds)
data(package = .packages(all.available=TRUE))
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds
#BASIC SCATTER
plot(diamonds$carat,diamonds$price)
#IMPROVED SCATTER
plot(diamonds$carat,diamonds$price,col = rgb(0,0,1,0.1),pch = 16,
     main = "Scatter Plot:Carat vs Price")
#HEXBIN USING BASER
install.packages('hexbin')
library(hexbin)
hb <- hexbin(diamonds$carat,diamonds$price,xbins = 40)
plot(hb,main="Hexbin Plot")
#BASIC HEXBIN
ggplot(diamonds,aes(x = carat,y = price))+
  geom_hex()