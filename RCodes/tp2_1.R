library(ggplot2)
library(gridExtra)
library(glue)

# genero aprox 10k datos, solo se van a mostrar
# 1000 en la consola

set.seed(912)
n <- 10000
lambda <- 1/8
X = rexp(n, lambda)

#b)
#hago el vector
exp_N_infty <- c(X)
exp_N_infty

#c)
mean(exp_N_infty)
var(exp_N_infty)

#d)
hist(exp_N_infty, probability = TRUE,  main = "Histograma de X",
     xlab = "Niveles de X",
     ylab = "Frecuencia",
     col = "skyblue",
     border = "black")


