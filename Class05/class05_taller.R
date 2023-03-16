library(readxl)
Regresion_lineal_dolar <- read_excel("Class05/Regresion_lineal_dolar.xlsx", col_types = c("numeric", "numeric"))
View(Regresion_lineal_dolar)

# Grafique un diagrama de dispersión de los datos.
# Interpretar.

data<-Regresion_lineal_dolar
data_x <- data$`Fecha (dd/mm/aaaa)`
data_y <- data$`Tasa de cambio representativa del mercado (TRM)`
plot(data_x, data_y, xlab = "Date", ylab="TRM", main= "Scatter plot")

# Calcule la ecuación de la recta de regresión, interprete la
# pendiente de la recta de regresión

regression <- lm(data_y~data_x, data = data)
regression
summary(regression)
plot(data_x, data_y, xlab= 'Date', ylab='TRM')
abline(regression)

# Estime el precio del dólar utilizando la recta de regresión
# (para cada valor de x) y halle los residuales.
estimacion <- data.frame(X = seq(1,366))
predict_r <- predict(regression, newdata=estimacion)
# Otra opción
# predict_r - data_y
residual <- resid(regression)
plot(predict_r - data_y)

# Calcule s^2 (La Varianza del Modelo) y compárelo con el valor hallado en la tabla ANOVA
s_varianza <- residual^2
s_varianza
varianza <- sum(s_varianza)/364
anova(regression)

# Realice la tabla ANOVA y analice la significancia del modelo. Pr(>F)
anova(regression)

# Con un nivel de significancia de 0.05 pruebe la hipótesis que 
# de la pendiente es diferente de cero. Se hace con F value: 1864.1
pf(0,1,364)

#  Halle e interprete R^2 y r.
SCE <- 9838270
SCE
STC <- 50383409 + 9838270
STC

R2 <- 1 - (SCE/STC)
R2

r <- sqrt(R2)
r
#  Menciones las ventajas y las desventajas de la regresión lineal simple.
