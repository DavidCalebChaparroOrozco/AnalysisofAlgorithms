# La depreciación lineal, consta de un artículo que pierde toda su utilidad inicial de A dólares a 
# lo largo de un periodo de n años por una cantidad A/n anual. Si un artículo que cuesta $25000 
# cuando está nuevo se deprecia linealmentea lo largo de 28 años, determine la función lineal que 
# proporciona el valor V después de t años, donde 0 ≤ t ≤ 28. ¿Cuál es el valor del artículo al 
# cabo de 12 años?

x_1 <- 25000
x_1  # Se muestra el valor de x_1

x_2 <- 28
x_2  # Se muestra el valor de x_2

# y = mx + b
x <- as.numeric(readline("Ingrese el valor de número de años: "))
# Se solicita al usuario que ingrese el número de años y se guarda en la variable x
# m = -(x_1/x_2)*x

if (x >= 0 & x <= 28) {
    m = -(x_1/x_2)  # Se calcula la pendiente m
    # b <- 25000    # Término independiente
    y <- (m * x) + x_1  # Se calcula el valor de y utilizando la fórmula y = mx + b
    cat("El valor después de", x, "años es:", y)  # Se imprime el resultado
} else {
    print("El número de años ingresado no es válido")  
}
