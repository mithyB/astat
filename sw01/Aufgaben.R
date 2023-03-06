# Aufgaben


# Aufgabe 1.2

# a) Bilden Sie einen Vektor x mit den Zahlen 4, 2, 1, 3, 3, 5, 7.
x <- c(4, 2, 1, 3, 3, 5, 7)

# b) Wählen Sie mit R den dritten Wert aus.
x[3]

# c) Wählen Sie mit R den ersten und vierten Wert aus.
x[c(1, 4)]

# d) Bestimmen Sie die Länge des Vektors x.
length(x)

# e) Was macht der Befehl x+2? Stellen Sie zuerst eine Vermutung auf und führen
#    dann den Befehl aus.
x+2

# f) Was macht der Befehl sum(x+2)? Stellen Sie zuerst eine Vermutung auf und
#    führen dann den Befehl aus.
sum(x+2)

# g) Was macht der Befehl x <= 3? Stellen Sie zuerst eine Vermutung auf und füh-
#    ren dann den Befehl aus.
x <= 3 # Es vergleicht mit jedem Element einzeln

# h) Was macht der Befehl x[x <= 3]? Stellen Sie zuerst eine Vermutung auf und
#    führen dann den Befehl aus.
x[x <= 3] # Es filtert nach der Bedingung

# i) Was macht der Befehl sort(x)? Stellen Sie zuerst eine Vermutung auf und
#    führen dann den Befehl aus.
sort(x)

# j) Was macht der Befehl order(x)? Stellen Sie zuerst eine Vermutung auf und
#    führen dann den Befehl aus. Vergleichen Sie dabei die Werte von order(x)
#    mit den Werten von x.
order(x) # Gibt die indexes aus wenn das Array soriert wär

# k) Sie möchten den Wert des 4. Eintrages durch die Zahl 8 ersetzen. Wie machen
#    Sie das?
x[4] <- 8



# Aufgabe 1.3

fahrenheit <- c(51.9, 51.8, 51.9, 53)
celsius <- 5/9 * (fahrenheit - 32)
fahrenheit2 <- c(48, 48.2, 48, 48.7)
fahrenheit2 - fahrenheit


# Aufgabe 1.4

weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
bmi <- weight/(height^2)


# Aufgabe 1.5

# a)
seq(1,7)
seq(1,6, 0.5)
seq(0,10, length.out=5)

# b)
x <- c(4, 10, 3, NA, NA, 1, 8)
mean(x) # Aus fehlenden Zahlen kann kein Mittelwert errechnet werden
mean(x, na.rm=TRUE) # Entfernt NA einträge
# na.last -> macht, dass die NAs am Schluss kommen
# decreasing -> die sortierreihenfolge
sort(x, na.last = TRUE, decreasing = TRUE)
order(x, na.last = TRUE)

# c)
z <- c(4, 2, 8, 9, 7, 5, 2, 1)
plot(z)
plot(z,
     type = "l",               # l Line, s Stair, p Point, o Point with Line, b, Connected Points, h Bars
     col = "blue",             # Farbe der Linie
     lty = 2,                  # Linetype (0 blank, 1 solid, 2 dashed, 3 dotted, 4 dotdash, 5 longdash, 6 twodash)
     main = "Haupttitel",      # Titel
     xlab = "Ein paar Zahlen", # Beschreibung der X-Achse
     ylab = "Andere Zahlen"    # Beschreibung der Y-Achse
    )
abline(v=3, type="l", lty=1, col="green")
abline(h=4, type="l", lty=3, col="red")
abline(a=1, b=2, type="l", lty=5, col="brown")


# Aufgabe 1.6

# a) Laden Sie den Datensatz und speichern Sie diesen unter der Variable data ab.
setwd("C:/Users/micha/code/astat/sw01")
data <- read.csv("weather.csv")

# b) Wählen Sie den Wert der zweiten Zeile und dritten Spalte aus.
data[2, 3]

# c) Wählen Sie die 4. Zeile aus?
data[4,]

# d) Wählen Sie die 1. und die 4. Spalte aus. Verwenden Sie dazu die Spaltennamen.
data[c("Luzern", "Zurich")]

# e) Speichern Sie obige Data unter dem Namen data1 ab und speichern Sie dies
#    unter dem Namen weather2.csv.
data1 <- data[c("Luzern", "Zurich")]
write.csv(data1, file = "weather2.csv")

# f) Wie können Sie herausfinden (mit R natürlich), welches der Name der 3. Spalte
#    ist?¨
colnames(data)[3]

# g) Wir möchten den Spalten Basel durch Genf ersetzen. Wie würden Sie vorge-
#    hen?
colnames(data)[2] <- "Genf"
data


# Aufgabe 1.7

# a)
d.fuel <- read.table(file = "./d.fuel.dat" ,header = T, sep = ",")

# b) Wählen Sie nur die fünfte Zeile des Dataframe d.fuel aus. Welche Werte 
#    stehen in der fünften Zeile?
d.fuel[5,]

# c) Wählen Sie nun die erste bis fünfte Beobachtung des Datensatzes aus. So lässt
#    sich übrigens bei einem unbekannten Datensatz ein schneller Überblick über
#    die Art des Dataframe gewinnen.
d.fuel[1:5,]

# d) Zeigen Sie gleichzeitig die 1. bis 3. und die 57. bis 60. Beobachtung des Daten-
#    satzes an.
d.fuel[c(1:3,57:60),]

# e) Berechnen Sie den Mittelwert der Reichweiten aller Autos in Miles/Gallon.
#    R-Hinweis: mean(...)
mean(d.fuel[,"mpg"])

# f) Berechnen Sie den Mittelwert der Reichweite der Autos 7 bis 22.
mean(d.fuel[7:22,"mpg"])

# g) Erzeugen Sie einen neuen Vektor t.kml, der alle Reichweiten in km/l, und
#    einen Vektor t.kg, der alle Gewichte in kg enthält.
t.kml <- d.fuel[,"mpg"] / 2.352
t.kg <- d.fuel[,"weight"] * 2.205

# h) Berechnen Sie den Mittelwert der Reichweiten in km/l und denjenigen der Fahr-
#    zeuggewichte in kg.
mean(t.kml)
mean(t.kg)
