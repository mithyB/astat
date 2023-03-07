# Aufgabe 3.1

# a) Zeichnen Sie Histogramme von der Zeitspanne zwischen zwei Ausbrüchen:
# Datensatz einlesen
setwd("C:/Users/micha/code/astat/sw03")
geysir <- read.table("geysir.dat", header = TRUE)

# 4 Graphiken im Graphikfenster
par(mfrow = c(2,2))

hist(geysir[, "Zeitspanne"])
hist(geysir[, "Zeitspanne"], breaks = 20)
hist(geysir[, "Zeitspanne"], breaks = seq(41, 96, by = 11))

# b) Zeichnen Sie Histogramme (Anzahl Klassen variieren) von der Eruptionsdauer:
hist(geysir[, "Eruptionsdauer"])


# Aufgabe 3.2
par(mfrow = c(1, 1))

# a) Lesen Sie die Datei mannfrau.csv ein.
mannfrau <- read.csv("mannfrau.csv")

# b) Erzeugen Sie das Streudiagramm aus groesse.mann und groesse.frau mit
#    der Regressionsgerade. Sehen Sie gegebenfalls für die Befehle im Skript/Slides
#    nach.
plot(mannfrau$groesse.mann, mannfrau$groesse.frau)

# c) Bestimmen Sie die Koeffizienten der Regressionsgeraden
coeff <- lm(mannfrau$groesse.mann ~ mannfrau$groesse.frau)$coefficients
mannfrau.a <- coeff[1]
mannfrau.b <- coeff[2]

# d) Im Streudiagramm in Abbildung unten ist die Gerade y = x, also groesse.mann
#    gleich groesse.frau orange eingezeichnet.
abline(mannfrau.a, mannfrau.b, col = "orange")


# Aufgabe 3.3

# a) Lesen Sie den Datensatz income.dat ein und generieren Sie Streudiagramme,
#    in welchen das Einkommen versus Anzahl Jahre Schulbildung und Einkommen
#    versus Intelligenzquotient aufgetragen sind.
income <- read.table("income.dat", header = TRUE)
plot(income$AFQT, income$Income2005)

# b) Bestimmen Sie die Parameter a und b des linearen Modells y = a + bx, wobei y
#    das Einkommen bezeichnet und x die Anzahl Jahre Schulbildung. Zeichnen Sie
#    die Regressionsgerade mit der R-Funktion
abline(lm(income$Income2005 ~ income$AFQT))


# Aufgabe 3.4

# a) Die Datei ist R schon enthalten.
head(anscombe)

# b) StellenSie jeden der 4 Datensätze als Streudiagramm dar, zeichnen Sie die Re-
#    gressionsgerade ein und kommentieren Sie die 
plot(anscombe$x1, anscombe$y1)
reg <- lm(anscombe$y1 ~ anscombe$x1)
abline(reg)

# c) Vergleichen Sie jeweils a und b, wobei y = a + bx.