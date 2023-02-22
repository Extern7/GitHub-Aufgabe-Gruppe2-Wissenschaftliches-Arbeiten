# Wissenschaftliches Arbeiten - Git Hub Projekt (Gruppe 2)

## Aufgabe 1 - Datensimulation


# Ohne Abhängigkeiten:

## Dataframe erstellen

data <- data.frame("ID" = seq(1,100,1),
                   "Alter" = rep(0,100),
                   "Studienfach" = rep(0,100),
                   "Interesse an Mathematik" = rep(0,100),
                   "Interesse an Programmieren" = rep(0,100),
                   "Mathe-LK" = rep(0,100))

# S: Ich erstelle erstmal einen leeren Dataframe der die passende Form hat.
# Nach und nach fuellen wir dann die einzelnen Spalten.



## Alter

data$Alter <- rnorm(100, mean = 25, sd = 2)

# S: Normalverteiltes Alter simuliert



## Studienfach

data$Studienfach <- sample(c("Statistik", "Data Science", "Mathe",
                             "Informatik"), size = 100, replace = TRUE,
                           prob = c(0.35, 0.35, 0.05, 0.25))

# S: Erst einmal mit Wahrscheinlichkeiten, die in etwa der Aufgabenstellung entsprechen
# Wir koennen die gerne noch etwas anpassen, wenn du moechtest


## Interesse an Mathematik

data$Interesse.an.Mathematik <- sample(c(1:7), size = 100, replace = TRUE,
                                       prob = c(rep(1/7,7)))

# P: Hier die Annahme, dass das Interesse gleichverteilt ist.




## Interesse an Programmieren

data$Interesse.an.Programmieren <- sample(c(1:7), size = 100, replace = TRUE,
                                          prob = c(rep(1/7,7)))
# P: Hier ebenfalls die Annahme, dass das Interesse gleichverteilt ist.



## Mathe-LK

data$Mathe.LK <- sample(c("Ja","Nein"), size = 100, replace = TRUE,
                        prob = c(1/2, 1/2))
                        
# P: Da die Interessen der Faecher gleichverteilt sind, nutzen wir hier erneut
# eine simple Gleichverteilung.


#Test
data
# P: funktioniert bei mir. 5 Merkmale + ID-Spalte und 100 reps.


# Idee für zweiten Datensatz:

# P: Eine reine Gleichverteilung ist ja ziemlich la. Lass uns also einen zweiten
# Datensatz data2 erstellen. Die andere Gruppe kann ja beide Datensaetze
# analysieren, oder sich einen aussuchen.

# Abhaengige Wahrscheinlichkeit und Verteilung der Interessen

# Joa hier muessen wir uns etwas sinnvolles ausssuchen. Erstmal ein spontanes 
# Ranking der Interessen der Faecher von mir ohne Wahrscheinlichkeiten.

#     |Mathematik | Informatik | Data Science | Statistik |
#IaM  |    1      |     4      |      3       |     2     | 
#IaP  |    4      |     1      |      2       |     3     |
#MLK  |    1      |     4      |      3       |     2     |

# Nun Mathe LK ist hier nur vom Interesse an Mathe abhaengig, aber dass soll
# ja erstmal nur ne Idee sein.



# S: Ein zweiter Datensatz mit Abhängigkeiten:

data2 <- data.frame("ID" = seq(1,100,1),
                    "Alter" = rep(0,100),
                    "Studienfach" = rep(0,100),
                    "Interesse an Mathematik" = rep(0,100),
                    "Interesse an Programmieren" = rep(0,100),
                    "Mathe-LK" = rep(0,100))


## Alter

data2$Alter <- rnorm(100, mean = 25, sd = 2)


## Interesse an Mathematik

data2$Interesse.an.Mathematik <- sample(c(1:7), size = 100, replace = TRUE,
                                        prob = c(rep(1/7,7)))


## Interesse an Programmieren

data2$Interesse.an.Programmieren <- sample(c(1:7), size = 100, replace = TRUE,
                                           prob = c(rep(1/7,7)))


## Mathe-LK:

for(i in 1:100){
if(data2$Interesse.an.Mathematik[i] <= 2)
  {data2$Mathe.LK[i] <- sample(c("Ja","Nein"), size = 1, replace = TRUE,prob = c(0.2,0.8))}
if(data2$Interesse.an.Mathematik[i] > 2 |
   data2$Interesse.an.Mathematik[i] < 6)
  {data2$Mathe.LK[i] <- sample(c("Ja","Nein"), size = 1, replace = TRUE,prob = c(1/2,1/2))}
if(data2$Interesse.an.Mathematik[i] >= 6)
  {data2$Mathe.LK[i] <- sample(c("Ja","Nein"), size = 1, replace = TRUE,prob = c(0.8,0.2))}
}

# S: Die Idee wird folgendermaßen umgesetzt. Ist das Interesse an Mathematik höher, so wird eher
# der Mathe-LK gewählt.



## Studienfach


for(i in 1:100){
  if(data2$Interesse.an.Mathematik[i] <= 4 & data2$Interesse.an.Programmieren[i] > 4)
  {data2$Studienfach <- sample(c("Statistik", "Data Science", "Mathe",
                                 "Informatik"), size = 100, replace = TRUE,
                               prob = c(0.15, 0.2, 0.05, 0.6))}
  if(data2$Interesse.an.Mathematik[i] > 4 & data2$Interesse.an.Programmieren[i] <= 4)
    {data2$Studienfach <- sample(c("Statistik", "Data Science", "Mathe",
                                 "Informatik"), size = 100, replace = TRUE,
                               prob = c(0.5, 0.2, 0.25, 0.05))}
  else {data2$Studienfach <- sample(c("Statistik", "Data Science", "Mathe",
                                      "Informatik"), size = 100, replace = TRUE,
                                    prob = c(0.35, 0.35, 0.05, 0.25))}
}

# S: Wir unterscheiden, wie das Interesse an Mathematik im Vergleich zum Interesse an Programmieren
# ist. Dabei ist Data Science, der "weniger mathematische" der Statistik Studiengänge. So ergeben sich 
# die Korrelation zwischen Studiengang und Interessen.



write.csv(data2)
