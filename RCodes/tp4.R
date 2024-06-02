set.seed(3)

datos_normales <- rnorm(7, mean = 75, sd = 5)

ic_sigma_con <- function(datos, varianza_poblacional, nivel){
  n <- length(datos)
  media_muestral <- mean(datos)
  error_estandar <- sqrt(varianza_poblacional/n)
  alpha <- 1 - nivel
  valor_z <- qnorm (1-alpha /2)
  limite_menor <- media_muestral - (valor_z* error_estandar)
  limite_mayor <- media_muestral + (valor_z* error_estandar)
  return (c(limite_menor, limite_mayor))
  
}
ICobs <- ic_sigma_con(datos_normales, 25, 0.90)

ICobs

set.seed(3)
Nrep <- 10000
nivel_de_confianza <- 0.95
media <- 75
varianza <- 25
res <- 0

for (i in 1:Nrep){
  datos_normales <- rnorm (7, mean = media, sd = sqrt(varianza))
  intervalo_de_confianza <- ic_sigma_con(datos = datos_normales, varianza_poblacional = varianza, nivel = nivel_de_confianza)
  if (intervalo_de_confianza[1] <= media && intervalo_de_confianza[2] >= media){
    res <- res + 1
  }
}
proporcion <- res/Nrep
proporcion

