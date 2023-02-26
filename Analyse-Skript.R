##Analyse des Alters 

dmetrische(data$Alter)
#Das Alter scheint um die 25 normalverteilt zu sein. Mit einer Spannweite
#von 19 bis 30


##Studienfach

dkat(data$Studienfach)
#Data Science und Statistik scheinen gleichverteilt zu sein.
#Mathe hat nur einen kleinen Anteil


##Studienfach ~ Interesse an Mathematik

sum(data$Studienfach == "Mathe" & data$Interesse.an.Mathematik > 3)/
  sum(data$Studienfach == "Mathe")
#[1] 0.2

sum(data$Studienfach == "Data Science" & data$Interesse.an.Mathematik > 3)/
  sum(data$Studienfach == "Data Science")
#[1] 0.5945946 

#Kein logischer Zusammenhang, da nur 20 Prozent der Mathe Studierenden
#mindestens eine 4 bei dem Interesse an Mathematik angegeben haben. 
#Bei den Data Scientist sind es schon 60 Prozent

dkat_biv(data$Studienfach, data$Interesse.an.Mathematik)
#Data Science und Statistik Studierende haben größeres Interesse an Mathematik (>= 6), als Studierende der Informatik
#und Mathematik. Der Informatik Bereich sieht realistisch aus. Mathematik eher unrealistisch, da
#die meisten Mathematikstudierenden nur "2" bei Interesse an Mathematik angegeben haben.

dquan(data$Interesse.an.Mathematik)
#Nur ca. 1/3 der Studierenden haben ein hohes Interesse an Mathematik, obwohl es sich grundsätzlich um Studiengänge mit einem
#hohen Mathematikanteil handelt.


##

dbiv(data$Alter, data$Mathe.LK) 
#Es gibt keine Person unter 21, welche kein Mathe-LK hatte
