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

# Die metrische Variable wird visuell durch Histogramm und Boxplot dargestellt. MIt summary() werden
# alle wichtigen Lagemaße berechnet.



## Funktion b
dkat <- function(x){
  barplot(table(x))
  if(is.numeric(x)){cat("Median:", median(x), " ")}
  modus <- names(table(x)[which(table(x) == max(table(x)))])
  cat("Modus:", modus)
  table(x)
}

# Visualisierung der kategoriellen Variable über Barplot. Der Modus als Kennzahl wird auch berechnet.
# Ist die kategorielle Variable ordinal, so wird auch der Median berechnet.



## Funktion c
dkat_biv <- function(x,y){
  tab <- table(x,y)
  print(tab)
  mosaicplot(tab, main = "Mosaikplot")
  if(is.numeric(x) & is.numeric(y)){
  cor.test(x,y, method = "spearman")}
}

# Gibt eine Zusammenhangsgröße für zwei kategorielle Variablen aus, wenn diese ordinal sind. Für alle 
# kategoriellen Variablen wird zudem eine Tablle und eine Visualisierung der Daten als Mosaikplot ausgegeben.



## Funktion d
dbiv <- function(x,y){
  if(!is.numeric(x)){
    stop("x muss Merkmal mit metrischen Auspraegungen sein
         (Datentyp numeric)")
  }
  par(mfrow=c(1,2))
  boxplot(x~y)
  spineplot(x, as.factor(y))
  cat("absolute correlation:", abs(cor(x, dichkod(y))))
  par(mfrow=c(1,1))
}

# Stellt Zusammenhang einer metrischen und dichotomen Variable dar.
# Zudem wird die absolute Korrelation zwischen beiden Variablen berechnet, wobei die dichotome Variable mit einer 
# Funktion aus Funktion-Skript 2 zu 0 und 1 kodiert wird.



## Funktion e
dquan <- function(x){
  niedrig <- quantile(x, probs = 1/3)
  mittel <- quantile(x, probs = 2/3)
  hoch <- quantile(x, probs = 1)
  cat("niedrig Quantil:", niedrig, "\n")
  cat("mittel Quantil:", mittel, "\n") 
  cat("hoch Quantil:", hoch, "\n")
  barplot(table(cut(x, breaks = c(0, niedrig, mittel, hoch), 
                    labels = c("niedrig", "mittel", "hoch"))))
  table(cut(x, breaks = c(0, niedrig, mittel, hoch), 
            labels = c("niedrig", "mittel", "hoch")))
  
}

# Sortiert für metrische und ordinale Daten die Ausprägungen in 3 Gruppen ein. Gibt zudem eine Tabelle und ein Barplot über die
# Haeufigkeiten von Auspraegungen in diesen Gruppen aus.



## Funktion f
kat_vis <- function(x, y, z){                   
  layout.m <- matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)
  layout(mat = layout.m, 
       heights = c(1, 1),
       widths = c(1, 1))
  boxplot(x~y, col = "steelblue")
  boxplot(z~y, col = "steelblue")
  barplot(table(x[which(data$Mathe.LK == "Ja")]), 
        col = "lightblue",  main = "Barplot von x unter der Bedingung: Mathe-LK == Ja")
  barplot(table(y[which(data$Mathe.LK == "Ja")]),
        col = "lightblue",  main = "Barplot von y unter der Bedingung: Mathe-LK == Ja")
  layout(mat = 1)
}
# Gedanke dahinter: kat_vis(data$Interesse.an.Mathematik, data$Studienfach, data$Interesse.an.Programmieren)
# Erstellt 2x4 Boxplots und zwei Balkendiagramme, die Zusammenhänge zwischen den Merkmalen untersuchen sollen.



## Weitere Funktionen


# Weiter entwicktelte Funktion dkat_bar:

dkat_bar <- function(kat1, kat2){
  lkat1 <- length(table(kat1))
  lkat2 <- length(table(kat2))
  nkat1 <- names(table(kat1))
  nkat2 <- names(table(kat2))
  Gruppen <- function(x){
    sapply(nkat2, function(y) sum(kat1[which(kat2 == y)] == nkat1[x]))/
      sum(kat1 == nkat1[x])
  }
  barplot(matrix(c(sapply(1:lkat1, Gruppen)), nrow = lkat2),
    beside = TRUE,
    main = "Barplot", ylab = "relative Häufigkeiten", names.arg = nkat1[1:lkat1],
    col = c(1,8,4,5,3,7,10))
  legend("topright", legend = 1:7, col = c(1,8,4,5,3,7,10), cex = 0.8, pch = 15)
}

# Die Funktion erstellt einen Barplot für kategorielle Merkmale mit Gruppen von "juxtaposed"-Bars (beside = TRUE). 
# So kann zum Beispiel für kat1 = Studienfach, kat2 = Interesse.an.Mathematik folgendes visualiert werden:
# Die relativen Haeufigkeiten von den Interesseleveln in Abhängigkeit vom Studienfach.
