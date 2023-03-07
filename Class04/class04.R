data
data_x <-data$X
data_y <- data$Y
plot(data_x, data_y)
plot(data_x, data_y, xlab = "X-axis", ylab = "Y-axis", main = "Scatter plot")

#lm: se utiliza para ajustar modelos lineales, incluidos los multivariantes. Puede utilizarse para 
# realizar regresiones, análisis de varianza de estrato único y análisis de covarianza.
modelo <- lm(Y~X, data = data)
modelo
summary(modelo)

#anova: Calcular tablas de análisis de varianza (o desviación) para uno o más objetos modelo 
# ajustados.
anova(modelo)
Estimates <- data.frame(X = seq(1,8))
Estimates
y_i = predict(modelo, Estimates)
y_i
qt(p= 0.05,5)
qt(p= 0.95,5,6)

#pf: La distribución F, Densidad, función de distribución, función cuantil y generación 
# aleatoria para la distribución F con df1 y df2 grados de libertad (y parámetro opcional 
# de no centralidad ncp).
pf(17.457,1,6,lower.tail = FALSE)

# Error: Es la resta del valor real - estimado

e_i = data_y - y_i
e_i

# (Intercept) Pr(>|t|): 0.85654


# Pr(>|t|)
Pr = pt(0.189, 7, lower.tail = FALSE)
Pr*2
# La distribución t de Student, densidad, función de distribución, función cuantil y 
# generación aleatoria para la distribución t con df grados de libertad 
# (y parámetro opcional de no centralidad ncp).