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

data$Interesse.an.Mathematik <- sample(c(1:7), size = 100, replace = TRUE,
                                       prob = c(rep(1/7,7)))
#Hier die Annahme, dass das Interesse gleichverteilt ist.
#Ich lasse uebrigens kein space wenn ich mit #kommentiere, damit koennen wir die
#Kommentare auch bei spaeteren Updates auseinanderhalten :)



## Interesse an Programmieren

data$Interesse.an.Programmieren <- sample(c(1:7), size = 100, replace = TRUE,
                                          prob = c(rep(1/7,7)))
#Hier ebenfalls die Annahme, dass das Interesse gleichverteilt ist.



## Mathe-LK

data$Mathe.LK <- sample(c("Ja","Nein"), size = 100, replace = TRUE,
                        prob = c(1/2, 1/2))
                        
#Da die Interessen der Faecher gleichverteilt sind, nutzen wir hier erneut
#eine simple Gleichverteilung.


#Test
data
#funktioniert bei mir. 5 Merkmale + ID-Spalte und 100 reps.


#Zweiter Datensatz?

#Eine reine Gleichverteilung ist ja ziemlich lame. Lass uns also einen zweiten
#Datensatz data2 erstellen. Die andere Gruppe kann ja beide Datensaetze
#analysieren, oder sich einen aussuchen.

#Abhaengige Wahrscheinlichkeit und Verteilung der Interessen

#Joa hier muessen wir uns etwas sinnvolles ausssuchen. Erstmal ein spontanes 
#Ranking der Interessen der Faecher von mir ohne Wahrscheinlichkeiten.

#     |Mathematik | Informatik | Data Science | Statistik |
#IaM  |    1      |     4      |      3       |     2     | 
#IaP  |    4      |     1      |      2       |     3     |
#MLK  |    1      |     4      |      3       |     2     |

#Nun Mathe LK ist hier nur vom Interesse an Mathe abhaengig, aber dass soll
#ja erstmal nur ne Idee sein.



#Kopie von data...

data2 <- data.frame("ID" = seq(1,100,1),
                    "Alter" = rep(0,100),
                    "Studienfach" = rep(0,100),
                    "Interesse an Mathematik" = rep(0,100),
                    "Interesse an Programmieren" = rep(0,100),
                    "Mathe-LK" = rep(0,100))

################################################################################

data2$Alter <- rnorm(100, mean = 25, sd = 2)

################################################################################

data2$Studienfach <- sample(c("Statistik", "Data Science", "Mathe",
                              "Informatik"), size = 100, replace = TRUE,
                            prob = c(0.35, 0.35, 0.05, 0.25))

################################################################################

data2$Interesse.an.Mathematik <- sample(c(1:7), size = 100, replace = TRUE,
                                        prob = c(rep(1/7,7)))

################################################################################

data2$Interesse.an.Programmieren <- sample(c(1:7), size = 100, replace = TRUE,
                                           prob = c(rep(1/7,7)))

################################################################################

data2$Mathe.LK <- sample(c("Ja","Nein"), size = 100, replace = TRUE,
                         prob = c(1/2, 1/2))

################################################################################









