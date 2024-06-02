# Parámetro de interés: \mu "tiempo medio de permanencia de la versión nueva"

# Hipótesis del investigador: H0: \mu = 60s vs. H1: \mu > 60s

# Nivel del test: 1% aproximadamente la probabilidad de tener el error de Tipo 1

# Xi = tiempo de la permanencia de la i-esima persona de la muestra
# \dfrac{\overline{X}_{n}-60}{\sqrt{\dfrac{s^2}{n}}}
# E(Xi) = \mu

library(readr)
datos <- read.table("datos_DNI_45913105.txt")
datos

# 2)
# a) 
media_muestral <- mean(datos$tiempo)
media_muestral

# b)
boxplot(datos$tiempo, main="Boxplot de Tiempo", xlab="Tiempo", col="gray")
abline(h = media_muestral, col = 'red')

# c)
hist(datos$tiempo, breaks = 25, probability = TRUE, main="Histograma de Tiempo", xlab="Valores", ylab="Frecuencia", col="white", border="black")
curve(dnorm(x, mean = media_muestral, sd = sd(datos$tiempo)), col = 'red', add = TRUE, lwd = 2)


# 3)
# No es exactamente normal. Se aproxima a una normal.


# 4)
# a)
# T = \dfrac{\overline{X}_{n}-60}{\sqrt{\dfrac{s^2}{n}}}
# Bajo H0. Es asintótico

# b)
# R_{\alpha} = {T > 2,326}


# 5)
qnorm(1-0.01)
estadistico_Tobs <- (media-60)/sd(datos$tiempo)*sqrt(30)
estadistico_Tobs
# No rechazo. No hay evidencia a nivel 0,01 para demostrar que el tiempo de
# permanencia promedio es mayor a 60s


# 6)
pvalor <- 1-pnorm(estadistico_Tobs)
pvalor
# No rechazo

# 7)
# No rechazo