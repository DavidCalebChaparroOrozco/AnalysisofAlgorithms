# Una página impresa debe tener márgenes izquierdo y derecho de 2 pulg de espacio en blanco y 
# márgenes superior e inferior de 1 pulg de espacio en blanco.  El área de la porción impresa es 32 
# pulg^2. Determine las dimensiones de la página de modo que se use la menor cantidad de papel.

encontrar_dimensiones_optimas <- function() {
  min_area_papel <- Inf
  ancho_optimo <- 0
  altura_optima <- 0

  for (ancho in 5:100) {
    for (altura in 3:100) {
      area_margen <- (ancho - 4) * (altura - 2)
      if (area_margen == 32) {
        area_papel <- ancho * altura
        if (area_papel < min_area_papel) {
          min_area_papel <- area_papel
          ancho_optimo <- ancho
          altura_optima <- altura
        }
      }
    }
  }
  
  # Devuelve las dimensiones óptimas
  resultado <- list(
    ancho_optimo = ancho_optimo,
    altura_optima = altura_optima
  )
  
  return(resultado)
}

# Ejemplo de uso
dimensiones_optimas <- encontrar_dimensiones_optimas()

# Imprimir los resultados
print(paste("Ancho óptimo:", dimensiones_optimas$ancho_optimo))
print(paste("Altura óptima:", dimensiones_optimas$altura_optima))
