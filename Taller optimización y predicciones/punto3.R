# Se producirá una caja, abierta por la parte superior, de una pieza cuadrada de cartón cortando un
# cuadrado de cada esquina y doblando los lados. Los cuadrados blancos se han cortado y el cartón 
# se ha doblado a lo largo de las líneas discontinuas. Dado que la pieza de cartón mide 40 cm por
# lado, encuentre las dimensiones de la caja con que se obtiene el volumen máximo. 
# ¿Cuál es el volumen máximo?

calcular_dimension_caja <- function(longitud_lado) {
  # Calcula las dimensiones de la caja
  ancho <- longitud_lado
  altura <- longitud_lado
  longitud <- longitud_lado / 2
  
  # Calcula el volumen de la caja
  volumen <- ancho * altura * longitud
  
  # Devuelve un vector con las dimensiones y el volumen
  resultado <- list(
    ancho = ancho,
    altura = altura,
    longitud = longitud,
    volumen = volumen
  )
  
  return(resultado)
}

# Pedir al usuario que ingrese el valor de la longitud del lado
longitud_lado <- as.numeric(readline("Ingrese el valor de x: "))
# longitud_lado <- 20
dimension <- calcular_dimension_caja(longitud_lado)

# Imprimir los resultados
print(paste("El ancho de la caja es", dimension["ancho"], "cm."))
print(paste("La altura de la caja es", dimension["altura"], "cm."))
print(paste("La longitud de la caja es", dimension["longitud"], "cm."))
print(paste("El volumen de la caja es", dimension["volumen"], "cm^3."))

