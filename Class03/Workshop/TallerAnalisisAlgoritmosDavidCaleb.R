# Escriba un algoritmo que permita leer dos valores distintos y 
# determinar cual de los dos valores es mayor y escribirlo.     

numA = as.integer(readline(prompt = "Enter the first number: "))

numB = as.integer(readline(prompt = "Enter the second number: "))

if (numA <= numB){
  print("El mayor es el numA")
} else {
  print("El mayor es el numB")
}

# Escriba un algoritmo que permita leer tres valores y almacenarlos
# en las variables A, B y C. El algoritmo debe imprimir cual es el
# mayor y cual es el menor. Presente un mensaje de alerta en caso
# de que detecte la introducción de valores iguales.

A = as.integer(readline(prompt = "Enter the value of A: "))

B = as.integer(readline(prompt = "Enter the value of B: "))

C = as.integer(readline(prompt = "Enter the value of C: "))

A<-1
B<-1
C<-1

if (A == B && A == C && B == C) {
  print("All values are equal")
} else {
  if (A > B && A > C) {
    print("The largest is A")
    print("The smallest is C")
  } else {
    if (B > A && B > C){
      print("The largest is B")
      print("The smallest is C") 
    } else {
      print("The largest is C")
      print("The smallest is A") 
    }
  }
}

# Desarrolle un algoritmo que le determine la hipotenusa de un
# triángulo rectángulo conocidas las longitudes de sus catetos.

cateto1 = as.double(readline(prompt = "Enter the value of cateto1: "))

cateto2 = as.double(readline(prompt = "Enter the value of cateto2: "))

hip = sqrt(cateto1**2 + cateto2**2)
print(paste("The hypotenuse is: ", hip))


# Desarrolle un algoritmo que permita determinar el área y volumen
# de un cilindro dado su radio (R) y altura (H)

Height  = as.double(readline(prompt = "Enter the value of Height: "))
Radius = as.double(readline(prompt = "Enter the value of Radius: "))

volume = pi*Radius*Radius*Height
print(paste("The Valume is: ", volume))

area = 2*pi*Radius*Radius+(2*pi*Height)
print(paste("The Area is: ", area))


# Desarrolle un algoritmo que permita calcular promedio del
# semestre, para ello asuma las notas definitivas de 5 asignaturas y
# sus respectivos créditos.

Subject1 = as.double(readline(prompt = "Enter the final Algorithm Analysis note: "))
Credits1 = as.integer(readline(prompt = "Enter the number of credits of Algorithm Analysis: "))

Subject2 = as.double(readline(prompt = "Enter the final database note: "))
Credits2 = as.integer(readline(prompt = "Enter the number of credits of database: "))

Subject3 = as.double(readline(prompt = "Enter the final Differential Calculus note: "))
Credits3 = as.integer(readline(prompt = "Enter the number of credits of Differential Calculus: "))

Subject4 = as.double(readline(prompt = "Enter the final Numerical Methods note: "))
Credits4 = as.integer(readline(prompt = "Enter the number of credits of Numerical Methods: "))

Subject5 = as.double(readline(prompt = "Enter the final Artificial Intelligence note: "))
Credits5 = as.integer(readline(prompt = "Enter the number of credits of Artificial Intelligence: "))

Average = ((Subject1*Credits1 + Subject2*Credits2 + Subject3*Credits3 + Subject4*Credits4 + Subject5*Credits5)/sum(Credits1+Credits2+Credits3+Credits4+Credits5))
print(paste("The Average is: ", Average))

# Desarrollar un algoritmo que le permita hallar el área de un
# triángulo conociendo sus tres lados.

A <- as.double(readline(prompt = "Enter the value A: "))
B <- as.double(readline(prompt = "Enter the value B: "))
C <- as.double(readline(prompt = "Enter the value C: "))

S = (A+B+C)/2

area = sqrt((S*(S-A)*(S-B)*(S-C)))
print(paste("The area of the triangle is: ", area))

# Hallar un algoritmo para calcular la distancia entre dos puntos en
# el espacio
dotA<-c(1,2,3)
dotB<-c(2,3,1)

x1=dotA[1]-dotB[1]
y1=dotA[2]-dotB[2]
z1=dotA[3]-dotB[3]

d = sqrt((x1**2)+(y1**2)+(z1**2))
print(paste("Distance between two points: ", d))