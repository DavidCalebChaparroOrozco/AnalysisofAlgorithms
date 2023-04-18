# Se hace un estudio sobre la efectividad de tres marcas de spray para matar moscas. 
# Para ello, cada producto se aplica a un grupo de 100 moscas, y se cuenta el número 
# de moscas muertas expresado en porcentajes. 
# Se hacen seis réplicas y los resultados obtenidos son:

datos <- data.frame(marca = rep(c("A","B","C"), each=6), 
                    numero=c(72, 65, 67, 75, 62, 73,
                             55, 59, 68, 70, 53, 50,
                             64, 74, 61, 58, 51, 69))

modelo_anova <- aov(numero~marca, data = datos)

summary(modelo_anova)

#Df Sum Sq Mean Sq F value Pr(>F)  
#marca        2  296.3  148.17   2.793 0.0931 .
#Residuals   15  795.7   53.04                 
#---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

sumaSq = 296.3 + 795.7
sumaSq

n = 3
Dfmarca = n - 1
Dfmarca

N = 18
Dfnumero = N - n
Dfnumero

Estimates <- data.frame(X = datos)
Estimates
y_i = predict(modelo_anova, Estimates)
y_i

qt(p=)

Pr = pt()


tukey <- TukeyHSD(modelo_anova)
tukey
plot(tukey)

# a) Formule la hipotesis adecuada y el modelo estadistico:
#     H0 = Ua = Ub = Uc
#     Ha = U1 ≠ Uj; i≠j; i,j = A, B, C

# El modelo estadistico:
# Yij = U + Ti + Eij
# U= Es el parámetro de escala común a todos los tratamientos la media global.
# Ti= Es un parámetro que mide el efecto del tratamiento i
# Eij = Es el error atribuible a la medición Yij.

# b) ¿Dé que manera el experimentador debe aleatorizar el experimento?
# Realizar un train_test_split que tomar unos datos de entrenamiento que no superen el 25% de la
# cantidad de los datos presentados, y 
# 




x <- 1:10
set.seed(72)           # Set seed
x_rand <- sample(x)        # Sample vector
x_rand                     # Print shuffled vector
# 6  1  3 10  9  7  5  8  2  4