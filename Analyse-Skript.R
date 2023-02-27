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
#Mathe hat den kleinsten Anteil mit ca. 5%-10%

##Studienfach ~ Interesse an Mathematik

dkat_biv(data$Studienfach, data$Interesse.an.Mathematik)
#Data Science und Statistik Studierende haben ein aehnlich verteiltes Interesse an Mathematik. (gleichverteilt)
#Bei den Mathe Studierenden ist die Verteilung eher unrealistisch, da die meisten Mathe Studierenden 
#nur "2" bei Interesse an Mathematik angegeben haben.

int.biv(data$Interesse.an.Mathematik, 5)
#Nur 20 Prozent der Mathe Studierenden haben mindestens eine 6 bei dem Interesse an Mathematik angegeben.
#Man sollte davon ausgehen, dass Mathe Studierende ein größeres Interesse an Mathe haben. 
#Es liegen anscheinend zu wenig Daten vor.
#Bei den Data Scientist und den Statistikern sind es schon 32 Prozent. 
#Bei den Informatikern sind es nur 14 Prozent, die großes Interesse an Mathe haben.
#Informatiker scheinen also nicht so ein großes Interesse an Mathe zu haben.

##Studienfach ~ Interesse an Programmieren

dkat_biv(data$Studienfach, data$Interesse.an.Programmieren)
#Data Science haben ein gleichverteiltes Interesse an Programmieren. Ebenso Mathe Studierende.

int.biv(data$Interesse.an.Programmieren, 3)
#Es ist zu erkennen, dass ein Großteil der Informatiker ein Interesse an Programmieren hat.
#Es haben nämlich 71 Prozent der Informatiker mindestens eine 4 angegeben.

int.biv(data$Interesse.an.Programmieren, 5)
#Viele Statistik Studierende haben ein großes Interesse (>5) an Programmieren mit 43 Prozent.
#Bei Data Science und Informatik sind es 27 bzw. 28 Prozent.
#Von den Mathe Studierenden haben 40 Prozent ein großes Interesse an Programmieren, allerdings ist das 
#wenig aussagekraeftig, da die Daten wenig Mathe Studierende umfassen.

##Alter ~ Mathe LK

dbiv(data$Alter, data$Mathe.LK) 
#Es gibt keine Person unter 21, welche kein Mathe-LK hatte

##Interesse an Mathematik

dquan(data$Interesse.an.Mathematik)
#Nur ca. 1/3 der Studierenden haben ein hohes Interesse an Mathematik, obwohl es sich grundsätzlich um Studiengänge mit einem
#hohen Mathematikanteil handelt.

##Interesse an Programmieren

dquan(data$Interesse.an.Programmieren)
#
#

##Weitere Zusammenhaenge

kat_vis(data$Interesse.an.Mathematik, data$Studienfach, data$Interesse.an.Programmieren)
#Kein Zusammenhang zwischen Studienfach ~ Mathe LK
#Es existiert Zusammenhang zwischen Interesse an Mathe ~ Mathe LK
#

