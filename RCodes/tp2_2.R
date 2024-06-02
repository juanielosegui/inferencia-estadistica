library(ggplot2)
library(gridExtra)
library(glue)

# genero aprox 10k datos, solo se van a mostrar
# 1000 en la consola

set.seed(303)
n <- 2
Nrep <- 10000
lambda <- 1/8
X = rexp(n, lambda)

promediosX = rep(NA, n_rep)
for(i in 1:n_rep){
  X = rexp(n, lambda)
  promediosX[i] = mean(X)
}


#a) guardo 10.000 promedios
promedios_exp5 <- c(X_means)

#b) hago el histograma
ggplot() +
  geom_histogram(aes(x=promediosX, y=after_stat(density)), bins=30) +
  stat_function(fun = dnorm, args = list(mean = 1/lambda, sd = (1/lambda)/sqrt(n))) +
  ggtitle(glue('N = {length(X)}'))