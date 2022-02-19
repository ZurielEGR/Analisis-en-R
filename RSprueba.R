#- Declaración de la librerías.
library(openxlsx)
library(tidyverse)


#- Importo la información de excel.
analisis <- read.xlsx(xlsxFile = "datos.xlsx",
                      sheet = "input", startRow = 9, cols = (1:17))

#- Elimina 2 columnas de la data original que no se va a usar.
analisis = analisis [(-c(2:3))]

#- Invierte las filas con las columnas.
analisis_inverso <- data.frame(t(analisis[-1]))
colnames(analisis_inverso) <- analisis[,1]


#- Creo un respaldo del data Frame.
df = analisis_inverso


#- Uso esta sentencia para visualizar la tabla.
View(analisis_inverso)
View(df)


#- Exporto el script a un archivo .xlsx
write.xlsx(x = analisis_inverso, file = "Output.xlsx")



