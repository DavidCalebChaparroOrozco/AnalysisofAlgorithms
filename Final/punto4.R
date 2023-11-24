# Para estudiar la confiabilidad de ciertos tableros electrónicos para carros, se someten a un 
# envejecimiento acelerado durante 100 horas a determinada temperatura, y como variable de interés 
# se mide la intensidad de corriente que circula entre dos puntos, cuyos valores aumentan con el 
# deterioro. Se probaron 20 módulos repartidos de manera equitativamente en cinco temperaturas y 
# los resultados obtenidos fueron los siguientes:
# 20◦ 40◦ 60◦ 80◦ 100◦
# 19 18 24 29 46
# 22 24 20 31 53
# 16 11 27 35 58
# 13 18 23 32 51

# Realice el análisis de varianza para estos datos, a fin de estudiar si la temperatura afecta la 
# intensidad de corriente promedio.
# ¿La temperatura afecta la variabilidad de las intensidades? Es decir, verifique si hay igual 
# varianza entre los diferentes tratamientos.
# ¿Hay alguna temperatura mejor? Argumente su respuesta.
# Dibuje las gráficas de medias y los diagramas de caja simultáneos, después interprételos.
# Verifique los supuestos de normalidad y de igualdad de varianza entre las temperaturas.

# Generación de datos
datos <- data.frame(
  grados = rep(c("20", "40", "60", "80", "100"), each = 4),
  numero = c(
    19, 18, 24, 29, 46,
    22, 24, 20, 31, 53,
    16, 11, 27, 35, 58,
    13, 18, 23, 32, 51
  )
)

# Análisis de varianza (ANOVA)
modelo_anova <- aov(numero ~ grados, data = datos)
summary(modelo_anova)
#             Df Sum Sq Mean Sq F value Pr(>F)
# grados       4    262   65.62     0.3  0.873
# Residuals   15   3282  218.83



# Test de Tukey
tukey <- TukeyHSD(modelo_anova)
tukey
plot(tukey)
summary(tukey)
#        Length Class  Mode
# grados 40     -none- numeric

# Cálculo de medias
media <- aggregate(numero ~ grados, data = datos, FUN = mean)
plot(media$grados, media$numero, type = "o", xlab = "Grados", ylab = "#", main = "Gráfica Medias")

# Gráfico de cajas
boxplot(numero ~ grados, data = datos, col = c("steelblue", "skyblue", "lightblue", "turquoise", "teal"), main = "Gráfica Cajas")

# Test de Bartlett
bartlett_test <- bartlett.test(numero ~ grados, data = datos)
bartlett_test