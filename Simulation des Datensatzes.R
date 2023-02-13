
# Wissenschaftliches Arbeiten - Git Hub Projekt (Gruppe 2)

## Aufgabe 1 - Datensimulation


## Dataframe erstellen

data <- data.frame("ID" = seq(1,100,1),
                   "Alter" = rep(0,100),
                   "Studienfach" = rep(0,100),
                   "Interesse an Mathematik" = rep(0,100),
                   "Interesse an Programmieren" = rep(0,100),
                   "Mathe-LK" = rep(0,100))

# Ich erstelle erstmal einen leeren Dataframe der die passende Form hat.
# Nach und nach füllen wir dann die einzelnen Spalten.



## Alter

data$Alter <- rnorm(100, mean = 25, sd = 2)

# Normalverteiltes Alter simuliert



## Studienfach

data$Studienfach <- sample(c("Statistik", "Data Science", "Mathe",
                             "Informatik"), size = 100, replace = TRUE,
                           prob = c(0.35, 0.35, 0.05, 0.25))
  
# Erst einmal mit Wahrscheinlichkeiten, die in etwa der Aufgabenstellung entsprechen
# Wir können die gerne noch etwas anpassen, wenn du möchtest



## Interesse an Mathematik







## Interesse an Programmieren







## Mathe-LK





