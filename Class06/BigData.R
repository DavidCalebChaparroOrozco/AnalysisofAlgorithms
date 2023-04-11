datos <- data.frame(grupo = rep(c("A","B","C"), each=10), 
                   peso=c(70, 75, 68, 71, 74, 72, 69, 73, 70, 72, 
                          77, 81, 83, 79, 82, 80, 76, 78, 81, 79,
                          90, 87, 85, 89, 92, 91, 86, 88, 90, 87))

modelo_anova <- aov(peso~grupo, data = datos)

summary(modelo_anova)

tukey <- TukeyHSD(modelo_anova)
tukey
plot(tukey)

datos2 <- data.frame(grupo =rep(c("A","B","C","D"), each=6),
                     peso=c(264, 260, 258, 241, 262, 255,
                            208, 220, 216, 200, 213, 206,
                            220, 263, 219, 225, 230, 228,
                            217, 226, 215, 227, 220, 222))

modelo_anova2 <- aov(peso~grupo, data = datos2)
summary(modelo_anova2)

tukey2 <- TukeyHSD(modelo_anova2)
tukey2
plot(tukey2)