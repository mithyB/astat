# Aufgabe 4.1

# Bestimmen Sie die Korrelationskoeffizienten der Aufgaben in Serie 3 und interpretie-
# ren Sie die Resultate und vergleichen Sie ihre Interpretation mit dem Streudiagramm.


# Aufgabe 4.2

# a) Erzeugen Sie den Vektor t.x mit den Werten −10, −9, . . . , 9, 10 und den Vektor
#    t.x1 mit den Werten 0, 1, . . . , 9, 10. Erzeugen Sie dann die Vektoren t.y und
#    t.y1, deren Elemente die Quadratwerte der entsprechenden Elemente von t.x
#    bzw. t.x1 enthalten.

t.x <- seq(-10, 10, by = 1)
t.x1 <- seq(0, 10, by = 1)
t.y <- t.x^2
t.y1 <- t.x1^2


# b) Zeichnen Sie die Streudiagramme t.y vs. t.x und t.y1 vs t.x1. Benützen Sie
#    die R-Funktion
#    plot()
plot(t.y, t.x)
plot(t.y1, t.x1)

# c) Berechnen Sie die Korrelationskoeffizienten zwischen t.x und t.y bzw. zwi-
#    schen t.x1 und t.y1. Benützen Sie die R-Funktion
#    cor()
#    Warum sind die beiden Korrelationen so verschieden?
cor(t.x, t.y)
cor(t.x1, t.y1)
  

# Aufgabe 4.3

# Wo steckt in den folgenden Aussagen der Fehler? Begründen Sie.

# a) Bei einer gezinkten Münze wurde festgestellt, dass P(Kopf)= 0.32 und P(Zahl)=
#    0.73.
# -> Es gibt Überschneidungen bei den Wahrscheinlichkeiten

# b) Die Wahrscheinlichkeit für einen Sechser im Zahlenlotto ist −3 * 10^(−6).
# -> Wahrscheinlichkeit kann nicht negativ sein

# c) Bei einer Befragung wurden die Ereignisse untersucht. Man findet P(S) = 0.1,
#    P(M) = 0.5 und P(S ∪ M) = 0.7
# S: Befragte Person ist schwanger.
# M: Befragte Person ist männlich.
# -> Die Wahrschienlichkeiten ergeben addiert nicht das korrekte Resultat


# Aufgabe 4.4 

# a) Beschreiben Sie den Ereignisraum in Form von Elementarereignissen.

# b) Wie gross ist die Wahrscheinlichkeit eines einzelnen Elementarereignisses?

# c) Berechnen Sie die Wahrscheinlichkeit, dass das Ereignis E1 „Die Augensumme
#    ist 7“ eintritt.

# d) Wie gross ist die Wahrscheinlichkeit, dass das Ereignis E2 „Die Augensumme
#    ist kleiner als 4“ eintritt.

# e) Bestimmen Sie P(E3) für das Ereignis E3 „Beide Augenzahlen sind ungerade“.

# f) Berechnen Sie P(E2 ∪ E3).


# Aufgabe 4.5
A <- 3/4
B <- 2/3

# a) Beide Ereignisse treten ein.
library(MASS)
fractions(A * B)

# b) Mindestens eines von beiden Ereignissen tritt ein.
fractions(A + B - A * B)

# c) Höchstens eines von beiden Ereignissen tritt ein.
fractions(1 - A * B)

# d) Keines der beiden Ereignisse tritt ein.
fractions(1 - (A + B - A * B))

# e) Genau eines der Ereignisse tritt ein.
fractions(A + B - 2 * A * B)


# Aufgabe 4.6

# Der Einsturz eines Gebäudes in Tokio kann durch zwei voneinander unabhängige
# Ereignisse verursacht werden.
# • E1: ein grosses Erdbeben
# • E2: ein starker Taifun
# Die jährlichen Eintrittswahrscheinlichkeiten dieser beiden Ereignisse sind P(E1) =
# 0.04 und P(E2) = 0.08.
# Berechnen Sie die jährliche Einsturzwahrscheinlichkeit des Gebäudes.

