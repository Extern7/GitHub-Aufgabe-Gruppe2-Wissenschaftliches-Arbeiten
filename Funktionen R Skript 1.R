# Wissenschaftliches Arbeiten - Git Hub Projekt (Gruppe 2)

## Aufgabe 3a - Funktionen Skript 1


## Funktion a
dmetrische <- function(x){
  par(mfrow=c(1,2))
  hist(x, freq = FALSE)
  boxplot(x)
  summary(x)
}




## Funktion b
dkat <- function(x){
  barplot(table(x))
}





## Funktion c
dkat_biv <- function(x,y){
  tab <- table(x,y)
  mosaicplot(tab)
}




## Funktion d
dbiv <- function(x,y){
  boxplot(x~y) 
}




## Funktion e





## Funktion f






## Weitere Funktionen
