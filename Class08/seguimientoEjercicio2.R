# Para estudiar la confiabilidad de ciertos tableros electrónicos para carros, se someten aun 
# envejecimiento acelerado durante 100 horas a determinada temperatura, y como variable de interés 
# se mide la intensidad de corriente que circula entre dos puntos, cuyos valores aumentan con el 
# deterioro. Se probaron 20 módulos repartidos de manera equitativamente en cinco temperaturas y 
# los resultados obtenidos fueron los siguientes:
# 20° 40° 60° 80° 100° 
# 15 17 23 28 45
# 18 21 19 32 51
# 13 11 25 34 57
# 12 16 22 31 48
# Realice el análisis de varianza para estos datos, a fin de estudiar si la temperatura afecta la 
# intensidad de corriente promedio.

intensidad_corriente <- c(15, 17, 23, 28, 45,
                         18, 21, 19, 32, 51,
                         13, 11, 25, 34, 57,
                         12, 16, 22, 31, 48)

temperatura <- rep(c(20, 40, 60, 80, 100), each = 4)

data <- data.frame(temperatura, intensidad_corriente)

data$temperatura <- as.factor(data$temperatura)

modelo_anova <- aov(intensidad_corriente ~ temperatura, data = data)

resultados_anova <- summary(modelo_anova)

print(resultados_anova)


# ¿La temperatura afecta la variabilidad de las intensidades? Es decir, verifique si hay igual 
# varianza entre los diferentes tratamientos.

# ANOVA
#             Df Sum Sq Mean Sq F value Pr(>F)
# temperatura  1    216   216.2    1.15  0.298
# Residuals   18   3384   188.0

# Dado el resultado obtenido anteriormente mediante el ANOVA, podemos analizar los valores de 
# "Residuals", donde se observa un valor de 188.0, que representa la suma de los cuadrados 
# residuales. Además, la muestra indica que la temperatura no tiene un efecto significativo en la 
# variabilidad de las intensidades de corriente.
# En resumen, no se cuenta con suficiente evidencia para afirmar que las diferentes temperaturas 
# tienen un impacto significativo en la variabilidad de las intensidades medidas. Esto significa 
# que no se observa una diferencia importante en la variabilidad de las intensidades entre las 
# distintas temperaturas evaluadas.
# Estos hallazgos sugieren que, en el contexto del envejecimiento acelerado de los tableros 
# electrónicos, la temperatura no es un factor determinante en la variabilidad de las intensidades 
# de corriente medidas. Es posible que otros factores, como el tiempo de envejecimiento o la 
# calidad de los componentes, tengan una influencia mayor en esta variabilidad. Sin embargo, 
# se requiere un análisis adicional y la consideración de otros factores antes de llegar a 
# conclusiones definitivas.

# ¿Hay alguna temperatura mejor? Argumente su respuesta.

# Dados los resultados anteriores, NO se puede concluir que exista una temperatura especifica que 
# sea mejor. Según los datos, no se encuentran evidencias para afirmar que las diferentes 
# temperaturas tengan un impacto significativo en la variabilidad de las intensidades medidas.

# Lo que da entender, que dentro del rango de temperaturas que se probo en el estudio, no se observó
# una diferencia importante en la variabilidad de las intensidades de corriente. Por lo tanto, no se
# puede afirmar que una temperatura sea mejor que otra en terminos de controlar o reducir la 
# variabilidad de las intensidades.


# Dibuje las gráficas de medias y los diagramas de caja simultáneos, después interprételos

sumaSq = 216 + 3384
sumaSq

n = 5
Dfmarca = n - 1
Dfmarca

N = 20
Dfnumero = N - n
Dfnumero

Estimates <- data.frame(X = data)
Estimates

tukey <- TukeyHSD(modelo_anova)
tukey
plot(tukey)

data_x <- data$`temperatura`
data_y <- data$`intensidad_corriente`
plot(data_x, data_y, xlab = "temperatura", ylab="intensidad_corriente", main= "Scatter plot")

# Podemos ver que las temperatura con menor nivel de intensidad de corriente tienden a tener mas 
# temperatura. 
# La mayoría de las temperaturas con temperatura baja (20 a 40) tienen entre 20 y 30 intensidad de 
# corriente, mientras que la mayoría con temperatura alta (80 a 100) tiene entre 30 y 25 intensidad 
# de corriente, aproximadamente.


# Verifique los supuestos de normalidad y de igual varianza entre las temperaturas.
residuos <- residuals(modelo_anova)

shapiro.test(residuos)
leveneTest(residuos ~ temperatura, data = data)

plot(modelo_anova, 1)  # Gráfico de residuos estandarizados
plot(modelo_anova, 2)  # Gráfico de residuos estandarizados por temperaturas

# SUPUESTO DE NORMALIDAD: Dado las graficas anteriores de las intensidades de corriente para cada 
# temperatura. Si las distribucciones se asemejan a una distribución normal en cada temperatura, 
# esto respaldaría el supuesto de normalidad. Además, se pueden utilizar pruebas estadísticas como 
# la prueba de normalidad de Shapiro-Wilk para evaluar formalmente la normalidad de los datos.


# IGUAL VARIANZA ENTRE TEMPERATURAS: se puede utilizar un gráfico de dispersión o un diagrama de 
# caja para observar si las variabilidades de las intensidades de corriente son similares en cada 
# temperatura. Si las longitudes de los intervalos de confianza o las cajas de los diagramas de 
# caja son aproximadamente iguales entre las temperaturas, esto indicaría una igualdad de varianza.
