data(airquality)
library(PASWR2)

hist(airquality$Wind, 
     main = "Histograma de Wind",
     xlab = "Niveles de Wind",
     ylab = "Frecuencia",
     col = "skyblue",
     border = "black"
)

hist(airquality$Temp, 
     main = "Histograma de Temp",
     xlab = "Niveles de Temp",
     ylab = "Frecuencia",
     col = "skyblue",
     border = "black"
)

boxplot(airquality$Temp, xlab = "Variables", airquality$Wind,
          main = "Boxplot", ylab = "Niveles")


mean(airquality$Wind)
median(airquality$Wind)
quantile(airquality$Wind)

mean(airquality$Temp)
median(airquality$Temp)

var(airquality$Wind)
sqrt(var(airquality$Wind))

sort(airquality$Wind)
IQR(airquality$Wind)
sd(airquality$Wind)
