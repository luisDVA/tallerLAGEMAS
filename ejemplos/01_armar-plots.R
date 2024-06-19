library(ggplot2)
library(readr)

#### Miércoles
#### Ejercicio 1


# Cargar los datos
ranas <- read_csv("ejemplos/ranas.csv")

# imprimir los datos en pantalla
ranas

# sin geom
ggplot(ranas,aes(x=svl,y=freq_dom))

# con geom
ggplot(ranas,aes(x=svl,y=freq_dom))+
  geom_point()

# más mapeo estético (forma)
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia))+
  geom_point()

# forma y color
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, color=familia))+
  geom_point()

# ¿que pasa aquí?
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia),color=familia)+
  geom_point()

# rótulos de los ejes
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, color=familia))+
  geom_point()+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)")

# titulo, tamaño de los puntos, y un "theme"
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, color=familia))+
  geom_point(size=4)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  theme_minimal()

?pch

# contornos a los puntos
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, fill=familia))+
  geom_point(size=4,color="white")+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_shape_manual(values=c(21,22,23))+
  theme_minimal()


# gráfico inicial
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")

# modificar rampa
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_gradient(low = "blue",high = "pink",)

# viridis
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_viridis_c()

# viridis, Inferno
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_viridis_c(option = "F")

# viridis, revertir dirección
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_viridis_c(direction = -1)

# scico
scico_palette_show()

ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_scico(palette = 'nuuk')


ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_scico(palette = 'bamako')


ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_scico(palette = 'davos', direction = -1)