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
  if(is.numeric(x)){cat("Median:", median(x), " ")}
  modus <- names(table(x)[which(table(x) == max(table(x)))])
  cat("Modus:", modus)
}





## Funktion c
dkat_biv <- function(x,y){
  tab <- table(x,y)
  print(tab)
  mosaicplot(tab, main = "Mosaikplot")
  if(is.numeric(x) & is.numeric(y)){
  cor.test(x,y, method = "spearman")}
}




## Funktion d
dbiv <- function(x,y){
  if(!is.numeric(x)){
    stop("x muss Merkmal mit metrischen Auspraegungen sein
         (Datentyp numeric)")
  }
  par(mfrow=c(1,2))
  boxplot(x~y)
  spineplot(x, as.factor(y))
  par(mfrow=c(1,1))
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
    legend.text = nkat2)
}

# Die Funktion erstellt einen Barplot für kategorielle Merkmale mit Gruppen von "juxtaposed"-Bars (beside = TRUE). 
# So kann zum Beispiel für kat1 = Studienfach, kat2 = Interesse.an.Mathematik folgendes visualiert werden:
# Die realtiven Haeufigkeiten von den Interesseleveln in Abhängigkeit vom Studienfach.
