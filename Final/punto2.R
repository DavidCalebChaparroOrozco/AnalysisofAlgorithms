# En un experimento se encontró la correspondencia dada en la tabla para la temperatura T (en ◦C) y
# la viscosidad cinemática v de un aceite con cierto aditivo.
# T = 20, 40, 60, 80, 100, 120
# v = 220, 200, 180, 170, 150, 135
# - Encuentre la recta de regresión v = mT + b y utilícela para estimar la temperatura del aceite en 
# v = 50 y v = 110.
# - Analice la significancia del modelo.
# - Halle e interprete un intervalo de confianza para la pendiente de la recta.

# Datos del experimento
T <- c(20, 40, 60, 80, 100, 120)
v <- c(220, 200, 180, 170, 150, 135)

# Crear un data frame con los datos
datos <- data.frame(T, v)

# Ajustar el modelo de regresión lineal
modelo <- lm(v ~ T, data = datos)

# Obtener los coeficientes de la recta de regresión
m <- coef(modelo)[2] # Pendiente
b <- coef(modelo)[1] # Término independiente

# Imprimir la ecuación de la recta de regresión
cat("La ecuación de la recta de regresión es: v =", round(m, 2), "T +", round(b, 2), "\n")

# Estimar la temperatura para v = 50 y v = 110
T_estimada_50 <- (50 - b) / m
T_estimada_50
T_estimada_110 <- (110 - b) / m
T_estimada_110

# Imprimir las estimaciones de temperatura
cat("La estimación de la temperatura para v = 50 es:", round(T_estimada_50, 2), "°C\n")
cat("La estimación de la temperatura para v = 110 es:", round(T_estimada_110, 2), "°C\n")

# Análisis de significancia del modelo
summary(modelo)

# Intervalo de confianza para la pendiente
conf_int <- confint(modelo)[2, ]
cat("El intervalo de confianza para la pendiente es:", round(conf_int[1], 2), "-", round(conf_int[2], 2), "\n")
