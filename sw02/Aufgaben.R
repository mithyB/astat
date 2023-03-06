# Aufgabe 2.1

winner <- c(183, 191, 185, 185, 182, 182, 188, 188, 188, 185, 185, 177,
            182, 182, 193, 183, 179, 179, 175)
opponent <- c(191, 165, 187, 175, 193, 185, 187, 188, 173, 180, 177, 183,
              185, 180, 180, 182, 178, 178, 173)

# a) Bestimmen Sie die Länge der beiden Vektoren. So können Sie auch überprüfen,
#    ob in beiden Vektoren gleich viele Einträge sind.
length(winner) == length(opponent)

# b) Bestimmen Sie die Einträge 6. bis 10. Eintrag des Vektors winner. Verwenden
#    Sie dazu die Klammerschreibweise winner[...].
winner[6:10]

# c) Bestimmen Sie den 3., 5. und 10. bis 12. Eintrag.
winner[c(3,5,10:12)]

# d) Die Washington Post hat festgestellt, dass die Einträge für Bill Clinton (7. und
#    8. Eintrag) zu klein sind. Er misst 189 cm. Ändern Sie die Einträge im Vektor
#    winner entsprechend ab und geben Sie den neuen Vektor nochmals aus.
winner[7:8] = 189
winner
  
# e) Die Behauptung ist, dass die Gewinner grösser sind als die Herausforderer.
#    Überprüfen Sie dies, indem Sie die Mittelwerte der Vektoren miteinander vergleichen.
mean(winner) > mean(opponent)

# f) Bestimmen Sie den durchschnittlichen Grössenunterschied.
mean(winner - opponent)

# g) Bestimmen Sie noch die Varianz s^2
#    und die Standardabweichung s des Vektors
#    winner.
var(winner)
sd(winner)

# h) Bestimmen Sie diese Werte noch ohne die implementierten Funktionen zu verwenden 
#    (Übung im Umgang mit R).
winner.var <- sum((winner - mean(winner))^2) / (length(winner)-1)
winner.sd <- sqrt(winner.var)


# Aufgabe 2.2

noten <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)
noten.altered <- noten;

# a) Ändern Sie drei Noten im Datensatz so ab, dass der Median gleich bleibt, aber
#    der Mittelwert sich stark ändert.
#    Verwenden Sie dazu den sort(. . .)-Befehl.
median(noten)
mean(noten)

sort(noten.altered)
noten.altered[c(2, 6, 8)] = 0

noten.median <- median(noten.altered)
noten.mean <- mean(noten.altered)

# b) Erstellen Sie zu den beiden Datensätzen einen gemeinsamen Boxplot. Was erkennen Sie?
boxplot(noten, noten.altered)

# Aufgabe 2.3

# a) Lesen Sie die Datei mannfrau.csv ein.
setwd("C:/Users/micha/code/astat/sw02")
data <- read.csv("mannfrau.csv")

# b) Erstellen Sie einen Boxplot für die Differenz des Alters zwischen Ehemännern
#    und Ehefrauen.
alter.diff <- data["alter.mann"] - data["alter.frau"]
boxplot(alter.diff)

# c) Interpretieren Sie im Boxplot den Median und die Quartile. Was können Sie
#    über die Ausreisser sagen?
# Median ist grösser als 0 und dem zu Folge stimmt die Annahme


# Aufgabe 2.4
head(InsectSprays)

# a)
tapply(InsectSprays[, "count"], InsectSprays[, "spray"], FUN = mean)
tapply(InsectSprays$count, InsectSprays$spray, mean)

# b)
count <- InsectSprays[, "count"]
spray <- InsectSprays[, "spray"]
boxplot(count ~ spray,
        data = InsectSprays,
        col = c("orange", "blue", "darkseagreen", "deeppink", "brown", "aquamarine")
)


# Aufgabe 2.5
diet <- read.csv("Diet.csv")
head(diet)
diet$weight.loss <- diet$weight6weeks - diet$pre.weight
head(diet)

