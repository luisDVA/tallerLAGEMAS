library(readr)
library(dplyr)


litt <- read_delim("presentaciones/ejemplos/0080598-240506114902167.csv")

names(litt)

littsub <- litt %>% select(gbifID,class,family,genus,species,
                           scientificName,countryCode,locality,stateProvince,
                           decimalLatitude,decimalLongitude,year)

littsub5 <- littsub %>% sample_n(size=5000)

write_csv(littsub5,"presentaciones/ejemplos/littorinidae.csv")
