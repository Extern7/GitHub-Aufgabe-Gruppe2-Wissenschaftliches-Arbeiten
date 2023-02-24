# Wissenschaftliches Arbeiten - Git Hub Projekt (Gruppe 2)

## Aufgabe 3a - Funktionen Skript 1


## Funktion a
dmetrische <- function(x){
  par(mfrow=c(1,2))
  hist(x, freq = FALSE)
  boxplot(x)
  summary(x)
  par(mfrow=c(1,1))
}




## Funktion b
dkat <- function(x){
  barplot(table(x))
  if(is.numeric(x)){median(x)}
}





## Funktion c
dkat_biv <- function(x,y){
  tab <- table(x,y)
  mosaicplot(tab, main = "Mosaikplot")
}




## Funktion d
dbiv <- function(x,y){
  boxplot(x~y)
  spineplot(x, as.factor(y))
}




## Funktion e
dquan <- function(x){
  niedrig <- quantile(x, probs = 1/3)
  mittel <- quantile(x, probs = 2/3)
  hoch <- quantile(x, probs = 1)
  barplot(table(cut(x, breaks = c(0, niedrig, mittel, hoch), 
                    labels = c("niedrig", "mittel", "hoch"))))
  table(cut(x, breaks = c(0, niedrig, mittel, hoch), 
            labels = c("niedrig", "mittel", "hoch")))
  
}

## Funktion f






## Weitere Funktionen


# Idee: Barplot der relative Häufigkeiten von Ausprägungen kategorieller Variablen in 
# Abhängigkeit von den Interessen darstellt

# beispielhaft:

data <- read.csv("datensatz.csv")

barplot(matrix(c(
  sapply(1:7, function(x) sum(data$Studienfach[which(data$Interesse.an.Mathematik == x)] == "Data Science"))/
    sum(data$Studienfach == "Data Science"),
  sapply(1:7, function(x) sum(data$Studienfach[which(data$Interesse.an.Mathematik == x)] == "Informatik"))/
    sum(data$Studienfach == "Informatik"),
  sapply(1:7, function(x) sum(data$Studienfach[which(data$Interesse.an.Mathematik == x)] == "Mathe"))/
    sum(data$Studienfach == "Mathe"),
  sapply(1:7, function(x) sum(data$Studienfach[which(data$Interesse.an.Mathematik == x)] == "Statistik"))/
    sum(data$Studienfach == "Statistik")), nrow = length(table(data$Interesse.an.Mathematik))),
  beside = TRUE,
  main = "Barplot", ylab = "relative Häufigkeiten", names.arg = c("Data Science", "Informatik",
                                                                  "Mathe", "Statistik"))

# Nächster Schritt: Diesen Barplot als Funktion verallgemeinern
