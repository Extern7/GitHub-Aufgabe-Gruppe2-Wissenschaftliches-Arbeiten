##Analyse des Alters 

dmetrische(data$Alter)
#Das Alter scheint um die 25 normalverteilt zu sein. Mit einer Spannweite
#von 19 bis 30
sd(data$Alter)
#Mit einer Standardabweichung von ungefaehr 2.0 .

##Studienfach

dkat(data$Studienfach)
#Data Science und Statistik scheinen gleichverteilt zu sein mit Anteilen von jeweils ca. 35%.
#Informatik hat einen kleineren Anteil mit ca. 20%. 
#Mathe hat den kleinsten Anteil mit ca. 5%

##Studienfach ~ Interesse an Mathematik

int.biv(data$Interesse.an.Mathematik, 3)
#Nur 20 Prozent der Mathe Studierenden haben mindestens eine 4 bei dem Interesse an Mathematik angegeben.
#Man sollte davon ausgehen, dass Mathe Studierende ein größeres Interesse an Mathe haben. 
#Es liegen anscheinend zu wenig Daten vor.
#Bei den Data Scientist sind es schon 60 Prozent, bei den Statistikern 49 Prozent und bei den Informatikern 52 Prozent. 
#Es ist nirgendwo ein klarer Zusammenhang zwischen Studienfach und Interesse an Mathematik erkennbar. 

int.biv(data$Interesse.an.Programmieren, 3)
#Es ist zu erkennen, dass ein Großteil der Informatiker ein Interesse an Programmieren hat.
#Es haben nämlich 71 Prozent der Informatiker mindestens eine 4 angegeben.
#Die restlichen Studiengaenge haben ein gleichverteiltes Interesse.

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
