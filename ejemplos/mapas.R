# cargar paquetes
library(rnaturalearth)
library(sf)
library(dplyr)
library(readr)
library(ggplot2)


# importar datos
litt <- read_csv("ejemplos/littorinidae.csv")

# subconjunto para género Lacuna y Gran Bretaña
LacunaGB <- litt %>% filter(genus=="Lacuna" & countryCode=="GB")

# países
granBr <- ne_countries(country = c("England","Ireland","Wales","Scotland"),scale = "medium"
                          )
plot(granBr)

ggplot()+
  geom_sf(data=granBr)

# convertir a clase sf
LacunaGBsf <- st_as_sf(LacunaGB,coords = c("decimalLongitude","decimalLatitude"),crs=4326)

plot(LacunaGBsf)

# visualizar
ggplot()+
  geom_sf(data=granBr)+
  geom_sf(data=LacunaGBsf)
