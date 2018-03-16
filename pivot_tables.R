

library(TeachingSampling)
library(dplyr)
library(reshape2)
data("BigLucy")

#*******************************************
# 1. tablas dinámicas ####
#*******************************************
head(BigLucy)


## Filtros: Income >250 y Taxes > 10 y Level== Small + Medium

filtro1 <- BigLucy %>% 
           filter(Income>250 & Taxes>10 & Level %in% c("Small","Medium"))

head(filtro1)

save(filtro1, file="./data/filtro1.Rdata")

#*********************************
# 2. Modelo lm ####
#*********************************

mod1 <- lm(Income ~ Taxes, data=filtro1)
summary(mod1)

save(mod1, file="./data/mod1.RData")

plot(mod1)









