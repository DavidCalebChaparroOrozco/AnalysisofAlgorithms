# Halle la distancia vertical máxima _d_ entre las gráficas y = x^2 − 1 y y = 1 − x para −2 ≤ x ≤ 1.
# Definir las funciones
f1 <- function(x) x^2 - 1
f2 <- function(x) 1 - x

# Definir el rango de valores de x
x <- seq(-2, 1, length.out = 1000)

# Calcular los valores de y para cada función
y1 <- f1(x)
y2 <- f2(x)

# Calcular la distancia vertical entre las gráficas
distancia_vertical <- max(abs(y1 - y2))

# Imprimir la distancia vertical máxima
print(distancia_vertical)
