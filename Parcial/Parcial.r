# Diseñe un algortitmo que realice lo siguiente:
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






# Si la nota media conseguida en una clase de n (15 ≤ n ≤ 20) estudiantes fue de 3.5, k (6 ≤ k ≤ 9)
# alumnos reprobaron con una nota de m (0 ≤ m < 3) y  el resto superó el 3, ¿cuál es la nota media 
# de los alumnos (n − k) que aprobaron?  Probar el algoritmo con:
# n = 18, k = 7, m = 2.5
# n = 16, k = 9, m = 2.8

n = as.integer(readline("Enter total number of students (n): "))
k = as.integer(readline("Enter the number of students that failed (k): "))
m = as.double(readline("Enter the grade of students who failed (m): "))

approved = n - k
approved

sum_notes_approved = (n * 3.5) - (k * m)
sum_notes_approved

average_grade_passed = sum_notes_approved / approved
average_grade_passed

print(paste("The average grade of the students who passed is as follows:", average_grade_passed))




# Elija una de las bases de datos: mtcars, ChickWeight o CO2 y seleccione dos variables 
# cuantitativas (con buena correlación) y realice lo siguiente:
  #   (10%) Grafique un diagrama de dispersión de los datos. Interpretar.
  #   (10%) Calcule la ecuación de la recta de regresión, interprete la pendiente de 
  #         la recta de regresión.
  #   (10%) Realice la tabla ANOVA y analice la significancia del modelo.
  #   (10%) Con un nivel de significancia de 0.05 pruebe la hipótesis que de la pendiente 
  #         es diferente de cero

# Seleccione la BD de mtcars
data = mtcars
require(graphics)
pairs(mtcars, main = "mtcars data", gap = 1/4)

# Selecciono mpg y wt
data_x = data$`wt`
data_y = data$`mpg`

# Grafique un diagrama de dispersión de los datos (mpg y wt). 
plot(data_y, data_x, main="Scatter plot of mpg and wt", xlab="Weight (thousand pounds)", ylab="Miles per gallon")
# Observación: 
# El diagrama de dispersión muestra una relación inversa entre las variables 'mpg' y 'wt'.
# Lo que sugiere que a medida que aumenta el peso del automóvil (wt), su rendimiento de combustible
# (mpg) tiende a disminuir.
# Existen algunos puntos que se alejan de la tendencia general de la relación negativa, lo que 
# indica la presencia de valores atípicos o influencias individuales que pueden estar afectando 
# a la relación observada.
# Hay algunos puntos que se desvían de la tendencia general de las relaciones negativas, lo que 
# indica la presencia de valores atípicos o influencias individuales que pueden afectar la relación
# observada.

# Calcule la ecuación de la recta de regresión
reg = lm(mpg ~ wt, data=data)
reg
summary(reg)
plot(data_x, data_y, main="Scatter plot of mpg and wt", xlab="Weight (thousand pounds)", ylab="Miles per gallon")
abline(reg)
# Observación:
# La ecuación de la recta de regresión obtenida para estas variables es mpg = 37.2851 - 5.3445 * wt,
# lo que sugiere que a medida que el peso del automóvil aumenta en una unidad, el rendimiento de 
# combustible disminuye en aproximadamente 5.34 millas por galón. Es decir, a medida que el peso 
# del automóvil aumenta, su rendimiento de combustible disminuye. 
# El (R-cuadrado) es de 0.7528, lo que indica que el modelo de regresión lineal explica el 75.28% de 
# la variabilidad observada en la relación entre mpg y wt. Esto sugiere que la regresión lineal es un 
# buen modelo para describir la relación entre estas dos variables en la base de datos mtcars.

# Realice la tabla ANOVA y analice la significancia del modelo.
anova(reg)
# Observación:
# De acuerdo al valor Pr(>F), es muy pequeño (1.295e-10), lo que indica que el modelo es altamente 
# significativo.
# Por lo tanto, podemos concluir que el modelo de regresión lineal es adecuado para describir la 
# relación entre mpg y wt, y que la relación observada entre estas dos variables no es solo el 
# resultado de la casualidad. Además, el modelo proporciona información útil que se puede utilizar 
# para predecir el consumo de combustible de un automóvil en función del peso.

# Con un nivel de significancia de 0.05 pruebe la hipótesis que de la pendiente es diferente de cero
alpha = 0.05
df_reg = 1
df_error = length(data_y) - 2
df_error
f_critico = qf(1 - alpha, df_reg, df_error)
f_critico
f_estadistico = summary(reg)$coefficients[2, "t value"]^2
f_estadistico
p_valor = pf(f_estadistico, df_reg, df_error, lower.tail = FALSE)
p_valor
print(paste("F estadístico:", f_estadistico))
print(paste("F crítico:", f_critico))
print(paste("Valor p:", p_valor))
if (p_valor < alpha) {
  print("Rechazamos la hipótesis nula. Hay evidencia suficiente para concluir que la pendiente es diferente de cero.")
} else {
  print("No podemos rechazar la hipótesis nula. No hay evidencia suficiente para concluir que la pendiente es diferente de cero.")
}