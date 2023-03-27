# Dise�e un algortitmo que realice lo siguiente:
# Dado un monto particular de dinero, calcular el
# descuento considerando que por encima de 90 el
# descuento es del 8% y por debajo de 90 es del 3%

numA = as.integer(readline(prompt = "Enter the amount of money: "))

if (numA >= 90){
  Discount = numA * 0.08
} else {
  Discount = numA * 0.03
}
print(paste("The total discount amount is: ",Discount))


# Si la nota media conseguida en una clase de n
# (15 ≤ n ≤ 20) estudiantes fue de 3.5, k (6 ≤ k ≤ 9)
# alumnos reprobaron con una nota de m (0 ≤ m < 3) y
# el resto superó el 3, ¿cuál es la nota media de los
# alumnos (n − k) que aprobaron?
# Probar el algoritmo con:
# n = 18, k = 7, m = 2.5
# n = 16, k = 9, m = 2.8

notaA -> 


# Elija una de las bases de datos: mtcars, ChickWeight o
# CO2 y seleccione dos variables cuantitativas (con buena correlación)
# y realice lo siguiente:
# (10%) Grafique un diagrama de dispersión de los datos. Interpretar.
# (10%) Calcule la ecuación de la recta de regresión, interprete la 
# pendiente de la recta de regresión.
# (10%) Realice la tabla ANOVA y analice la significancia del modelo.
# (10%) Con un nivel de significancia de 0.05 pruebe la hipótesis que
# de la pendiente es diferente de cero

# Seleccione la BD de mtcars
data <- mtcars
require(graphics)
pairs(mtcars, main = "mtcars data", gap = 1/4)

# Selecciono mpg y wt
data_x <- data$`mpg`
data_y <- data$`wt`
plot(data_x, data_y, xlab = "mpg", ylab="wt", main= "Scatter plot")
# El diagrama de dispersi�n muestra la relaci�n entre las variables "hp" y "wt".
# Podemos observar que a medida que transcure

