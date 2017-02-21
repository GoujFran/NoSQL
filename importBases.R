# install.packages("jsonlite")

library(jsonlite)


# Museum

museumInter <- fromJSON("museum.json")
museum <- as.data.frame(museumInter$data)
colnames(museum) <- museumInter$meta$view$columns$name
museum <- museum[-c(1:8)]

museum$the_geom <- as.character(museum$the_geom)
museum$the_geom <- substr(museum$the_geom,8,nchar(museum$the_geom)-1)
museumCoor <- matrix(unlist(strsplit(museum$the_geom," ")),ncol = 2, byrow = TRUE)
museum$long <- museumCoor[,1]
museum$lat <- museumCoor[,2]

write(toJSON(museum, pretty=TRUE), "museumFinal.json")

# Library

libraryInter <- fromJSON("library.json")
library <- as.data.frame(libraryInter$data)
colnames(library) <- libraryInter$meta$view$columns$name
library <- library[-c(1:8)]

library$the_geom <- as.character(library$the_geom)
library$the_geom <- substr(library$the_geom,8,nchar(library$the_geom)-1)
libraryCoor <- matrix(unlist(strsplit(library$the_geom," ")),ncol = 2, byrow = TRUE)
library$long <- libraryCoor[,1]
library$lat <- libraryCoor[,2]

write(toJSON(library, pretty=TRUE), "libraryFinal.json")

# Wifi

wifiInter <- fromJSON("wifi.json")
wifi <- as.data.frame(wifiInter$data)
colnames(wifi) <- wifiInter$meta$view$columns$name
wifi <- wifi[-c(1:8)]

wifi$the_geom <- as.character(wifi$the_geom)
wifi$the_geom <- substr(wifi$the_geom,8,nchar(wifi$the_geom)-1)
wifiCoor <- matrix(unlist(strsplit(wifi$the_geom," ")),ncol = 2, byrow = TRUE)
wifi$long <- wifiCoor[,1]
wifi$lat <- wifiCoor[,2]

write(toJSON(wifi, pretty=TRUE), "wifiFinal.json")

