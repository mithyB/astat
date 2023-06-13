# Aufgabe 7.1

# Durchschnitt = 1.8
# Standardabweichung = 0.074

# a) Mit welcher Wahrscheinlichkeit ist ein zufällig ausgewählter Mann dieser Al-
#    tersgruppe grösser als 1.85 m bzw. zwischen 1.70 m und 1.80 m gross?
1 - pnorm(q = 1.85, mean = 1.8, sd = 0.074)

pnorm(q = 1.8, mean = 1.8, sd = 0.074) - pnorm(1.7, 1.8, 0.074)

# b) In welchem symmetrischen Bereich um den Mittelwert liegen die Grössen von
#    50 % der Körpergrössen?
qnorm(p = c(0.25, 0.75), mean = 1.8, sd = 0.074)
# 50% der Männer sind zwischen 1.75 m und 1.85 m

# c) Wie gross muss ein Mann sein, damit er zu den 5 % grössten Männern gehört?
qnorm(p = 0.95, mean = 1.8, sd = 0.074)
# 5% der Männer sind grösser als 1.92 m.


# AUfgabe 7.2

# a) Wie gross ist die Wahrscheinlichkeit, einen Karpfen zu fangen, der höchstens
#    2.5 kg bzw. mindestens 5 kg wiegt?
pnorm(q = 2.5, mean = 4, sd = 1.25)
1 - pnorm(q = 5, mean = 4, sd = 1.25)

# b) Wie viel Prozent aller Karpfen wiegen zwischen 3 kg und 4.5 kg?
pnorm(q = 4.5, mean = 4, sd = 1.25) - pnorm(3, 4, 1.25)

# c) Der Fischereiverband will einen Pries für die schwersten Karpfen aussetzen.
#    Welches Mindestgewicht muss man verlangen, damit die Wahrscheinlichkeit,
#    den Preis zu bekommen, 2 % beträgt?
qnorm(p = 0.98, mean = 4, sd = 1.25)
