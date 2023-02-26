#Funktionen R Skript 2 für interne Funkitionen

## dichkod()

dichkod <- function(dich){
  if(length(table(dich)) != 2){
    stop("Input besitzt keine dichotomen Auspraegungen")
  }
  x <- dich
  x[which(x == names(table(x))[1])] <- 0
  x[which(x == names(table(x))[2])] <- 1
  return(as.numeric(x))
}

# Funktion kodiert dichotome Variablen mit 0 und 1.  
