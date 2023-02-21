# Rstudio basics
3+4
sqrt(144)

# vector
vector1 <- c(1:4)
vector1

# for
for (i in 1:10){print(i)}

# if / while
x <- 5
if (x > 0) {print(" X it's greater than 0")}

# else
x <- 5
if (x > 10) 
{
  print(" X it's greater than 10")
} 
else 
{
  print(" X it's not greater than 10")
}

# while
i <= 8
while(i <= 10) {print(i) i <= i + 1 }

# Module
N <- 4
M <- 2
N %% M

# Odd or Even
library(gmp)
#numA = as.integer(readline(prompt ="Enter the number: "))

numA = as.bigz(readline(prompt ="Enter the number: "))

if ((numA %% 2) == 0){
  print(paste(numA, "The number is Odd"))
}else {
  print("The number is Even")
}

# Professor
num <- 25
es_primo <- TRUE
if (i in 2:(num-1)){
  es_primo <-FALSE
  break
}

if (es_primo){
  print(paste(num, "es un número primo"))
} else {
  print(paste(num, "no es un número primo"))
}

# Importar dataset en Excel
library(readxl)
datasetexcel <- read_excel("C:/Users/salas/Desktop/datasetexcel.xlsx")
View(datasetexcel)

dir.input <- 'C:/Users/salas/Desktop/datasetexcel.xlsx'

# Select the column C
dataset_excel_C <- datasetexcel[,"C"]

# Select the column D
dataset_excel_D <- datasetexcel[,"D"]

# Summary de C
summary(dataset_excel_C)

# Haga plot de C
# plot(dataset_excel_D, dataset_excel_C)
# abline(a = 2, b = 4, col = "blue", lwd = 2)
plot_C <- datasetexcel[1:6,3]
plot(plot_C)

# Boxplot de C
boxplot(dataset_excel_C, horizontal = TRUE)

# Analice plot de toda la base
plot(datasetexcel)
abline(a = 2, b = 4, col = "red", lwd = 2)

# Halle var de toda la base
var(dataset_excel_C)