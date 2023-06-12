# Aufgabe 5.1

# a) Handelt es sich hier um eine Wahrscheinlichkeitsverteilung? Begründen Sie ihre
#    Antwort.
# Ja, zusammenaddiert ergeben alle Wahrscheinlichkeiten 1.0

# b) Berechnen Sie die Wahrscheinlichkeit, bei zufälliger Auswahl einen Haushalt
#    zu erhalten, der zwischen 2 und 4 Mitglieder hat.
# P(2 <= X <= 4) = P(X = 2) + P(X = 3) + P(X = 4) = 0.2 + 0.2 + 0.1 = 0.5

# c) Berechnen Sie die Wahrscheinlichkeit, bei zufälliger Auswahl einen Haushalt
#    zu erhalten, der mehr als 2 Mitglieder hat.
# P(2 < X) = P(X = 3) + P(X = 4) + P(X = 5) = 0.2 + 0.1 + 0.1 = 0.4

# d) Berechnen Sie die Wahrscheinlichkeit, bei zufälliger Auswahl einen Haushalt
#    zu erhalten, der höchstens 4 Mitglieder hat.
# P(X <= 4) = P(X = 1) + P(X = 2) + P(X = 3) + P(X = 4) = 0.4 + 0.2 + 0.2 + 0.1 = 0.9

# e) Berechnen Sie die Wahrscheinlichkeit, bei zufälliger Auswahl einen Mehrperso-
#    nenhaushalt zu erhalten.
# P(1 < X) = P(X = 2) + P(X = 3) + P(X = 4) + P(X = 5) = 0.2 + 0.2 + 0.1 + 0.1 = 0.6


# Aufgabe 5.2

# a) Die Wahrscheinlichkeit dafür, dass höchstens 13 Aufgaben richtig beantwortet#   
#    sind.
# P(X <= 13) = 0.992

# b) Die Wahrscheinlichkeit dafür, dass mindestens 10 Aufgaben richtig sind.
# P(10 <= X) = 1 - P(X <= 9) = 1 - 0.939 = 0.061

# c) Die Wahrscheinlichkeit dafür, dass genau 15 Aufgaben richtig beantwortet sind.
# P(X = 15) = P(X <= 15) - P(X <= 14) = 1 - 0.999 = 0.001

# d) Die Wahrscheinlichkeit dafür, dass zwischen 9 und 12 Aufgaben richtig beant-
#    wortet sind.
# P(9 <= X <= 12) = P(X <= 12) - P(X <= 8) = 0.989 - 0.711 = 0.278


# Aufgabe 5.3

# a) Stellen Sie die Verteilungsfunktion als Tabelle auf.

# b) Berechnen Sie die Wahrscheinlichkeit dafür, dass genau 2 mal Zahl geworfen
#    wird.

# c) Berechnen Sie die Wahrscheinlichkeit dafür, dass mindestens 2 mal Zahl gewor-
#    fen wird.

# d) Berechnen Sie die Wahrscheinlichkeit dafür, dass höchstens 1 mal Zahl gewor-
#    fen wird.


# Aufgabe 5.4

# Berechnen Sie den Erwartungswert der folgenden Wahrscheinlichkeitsverteilung.
# p2 = 1 − 0.3 − 0.1 − 0.2 − 0.3 = 0.1
# E(X) = x1*p1 + x2*p2 + ... + x5*p5
#      = −5*0.3 + (−4)*0.1 + ... + 6*0.3 = 0.6
x <- c( -5,  -4,   1,   3,   6)
p <- c(0.3, 0.1, 0.1, 0.2, 0.3)
sum(x*p)

# Aufgabe 5.5

# Sie werfen zusammen einen blauen und einen roten Würfel.

# a) Bestimmen Sie die Wahrscheinlichkeitsverteilung der geworfenen Augensum-
#    me.
#    2,    3,    4,    5,    6,    7,    8,    9,   10,   11,   12
# 1/36, 2/36, 3/36, 4/36, 5/36, 6/36, 5/36, 4/36, 3/36, 2/36, 1/36

# b) Berechnen Sie den Erwartungwert und die Standardabweichung. Interpretieren
#    Sie diese Werte.
#    Verwenden Sie dazu R, indem Sie zwei Liste x und p erzeugen, die beiden mul-
#    tiplizieren und den Befehl sum(...) benützen.
x <- 2:12
p <- c(1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1) / 36
E <- sum(x*p)
E

# Standardabweichung
var.X <- sum((x-E)**2*p)
var.X
sigma <- sqrt(var.X)
sigma