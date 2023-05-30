# Encuentrar el valor mínimo de la suma de un número no negativo y su recíproco

calcular_suma <- function(x) {
  suma <- x + 1/x
  return(suma)
}

# Pedir al usuario que ingrese el valor de x
x <- as.numeric(readline("Ingrese el valor de x: "))

suma <- calcular_suma(x)

cat("La suma de", x, "y su recíproco es:", suma)
