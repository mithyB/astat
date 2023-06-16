# AUfgabe 8.1

# a) Berechnen Sie die Wahrscheinlichkeit, dass die durchschnittliche Wartezeit die-
#    ser Passagiere weniger als 10 Minuten beträgt.
# sd = sqrt(Standardabweichung^2 / Anzahl Versuche oder Tests)
# sd = sqrt(6^2/36) = 1
pnorm(q = 10, mean = 8.2, sd = 1)

# b) Berechnen Sie die Wahrscheinlichkeit, dass die durchschnittliche Wartezeit die-
#    ser Passagiere zwischen 5 und 10 Minuten beträgt.
pnorm(q = 10, mean = 8.2, sd = 1) - pnorm(q = 5, mean = 8.2, sd = 1)

# c) Berechnen Sie die Wahrscheinlichkeit, dass die durchschnittliche Wartezeit die-
#    ser Passagiere mehr als 20 Minuten beträgt.
# bei "grösser gleich" muss "1 -" gerechnet werden
1 - pnorm(q = 20, mean = 8.2, sd = 1)

# d) Alle haben wohl schon die Erfahrung gemacht, dass man länger beim Check-in
#    gewartet hat. Warum ist die Wahrscheinlichkeit von c) dann so klein?

# e) Gilt hier die i.i.d.-Annahme überhaupt?


# AUfgabe 8.2
# sd = sqrt(0.3^2/100)
1 - pnorm(q = 3.1, mean = 2.2, sd = 0.03)


# Aufgabe 8.3

# a) Wie gross ist näherungsweise die Wahrscheinlichkeit, dass das durchschnittli-
#    che Prüfungsergebnis im dem Kurs mit 25 TeilnehmerInnen zwischen 72 und
#    82 Punkten liegt?
# sd = sqrt(15^2/25) = 3
pnorm(q = 82, mean = 77, sd = 3) - pnorm(q = 72, mean = 77, sd = 3)

# b) Wiederholen Sie die Rechnung aus Teil a) für den Kurs mit 64 TeilnehmerInnen.
# sd = sqrt(15^2/64) = 1.875
pnorm(q = 82, mean = 77, sd = 1.875) - pnorm(q = 72, mean = 77, sd = 1.875)
