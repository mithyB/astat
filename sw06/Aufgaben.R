# Aufgabe 6.1

# a) Interpretieren (nicht berechnen!) Sie die Wahrscheinlichkeiten
# P(K)        = Wahrscheinlichkeit, dass effektiv Krank
# P(!T)       = Wahrschcinlichkeit, dass Test negativ
# P(K | T)    = Wahrscheinlichkeit, dass Test positiv, wenn effektiv Krank
# P(T | K)    = Wahrscheinlichkeit, dass effektiv Krank, wenn Test positiv
# P(!T | !K)  = Wahrscheinlichkeit, dass nicht Krank, wenn Test negativ

# b) Bezeichnen Sie die Wahrscheinlichkeit, die in der Aufgabe gegeben sind, wie in a).
# P(K) = 0.01
# P(T | K) = 0.98
# P(T | !K) = 0.03

# c) Berechnen Sie P(!K).
# P(!K) = 1 - P(K) = 0.99

# d) Mit welcher Wahrscheinlichkeit zeigt der Test bei einer zufällig ausgewählten
#    Person ein positives Ergebnis?
#    Verwenden Sie das Gesetz der totalen Wahrscheinlichkeit.
# P(T) = P(T | K) * P(K) + P(T | !K) * P(!K)
#      = P(T | K) * P(K) + P(T | !K) * (1 - P(K))
#      = 0.98     * 0.01 + 0.03      * (1 - 0.01)
#      = 0.0395

# e) Mit welcher Wahrscheinlichkeit ist eine positiv getestete Person auch tatsächlich
#    krank? Kommentieren Sie das Ergebnis.
#    Verwenden Sie das Bayes Theorem.
# P(K | T) = (P(T | K) * P(K)) / P(T)
#          = (0.98 * 0.01) / 0.0395
#          = 0.2481

# f) Mit welcher Wahrscheinlichkeit ist eine als negativ getestete Person gesund?
#    Kommentieren Sie das Ergebnis.
#    Verwenden Sie das Bayes Theorem.
# P(!K | !T) = (P(!T | !K) * P(!K)) / P(!T)
#            = ((1 - P(T | !K)) * P(!K)) / (1 - P(T))
#            = ((1 - 0.03) * 0.99) / (1 - 0.0395)
#            = 0.999792


# Aufgabe 6.2

# P(D) = 0.2
# P(T | D) = 0.99
# P(T | !D) = 0.05

# a) Wie gross ist die Wahrscheinlichkeit, dass eine Dopingprobe positiv ausfällt.
# P(T) = P(T | D) * P(D) + P(T | !D) * (1 - P(D))
#      = 0.99 * 0.2 + 0.05 * (1 - 0.2)
#      = 0.238
0.99 * 0.2 + 0.05 * (1 - 0.2) 

# b) Wie gross ist die Wahrscheinlichkeit, dass der Test negativ ausfällt, obwohl der
#    Sportler gedopt hat?
# P(!T | D) = 1 - P(T | D) = 0.01

# c) Wie gross ist die Wahrscheinlichkeit, dass ein Sportler gedopt hat, falls seine
#    Dopingprobe negativ ausgefallen ist.
# P(D | !T) = (P(!T | D) * P(D)) / P(!T)
#           = (0.01 * 0.2) / (1 - 0.238)
#           = 0.002624672
(0.01 * 0.2) / (1 - 0.238)


# Aufgabe 6.3

# P(W) = 0.99
# P(+ | L) = 0.88
# P(− | W) = 0.86

# a) Interpretieren Sie die Wahrscheinlichkeiten P(W) und P(+|L).
# P(W) = Wahrscheinlichkeit, dass Wahrheitgesagt wurde
# P(+ | L) = Wahrscheinlichkeit, dass gelogen wurde, wenn der Test positiv wahr

# b) Bei einer Person zeigt der Detektor an, dass gelogen wurde. Mit welcher Wahr-
#    scheinlichkeit hat diese Person effektiv gelogen?
# P(L) = 1 - P(W) = 0.01
# P(+ | W) = 1 - P(- | W) = 0.14
# P(+) = P(+ | W) * P(W) + P(+ | L) * P(L)
#      = 0.14 * 0.99 + 0.88 * 0.01
#      = 0.1474
0.14 * 0.99 + 0.88 * 0.01
# P(L | +) = (P(+ | L) * P(L)) / P(+)
#          = (0.88 * 0.01) / 0.1474
#          = 0.05970149
(0.88 * 0.01) / 0.1474
  
# c) Interpretieren Sie das Resultat aus b) in 2-3 Sätzen. Für wie aussagekräftig hal-
#    ten Sie den Lügendetektor.


# Aufgabe 6.4

# P(D) = 0.01
# P(+ | D) = 0.9
# P(+ | !D) = 0.01

# P(!D) = 1 - P(D) = 0.99
# P(+) = P(+ | D) * P(D) + P(+ | !D) * P(!D)
#      = 0.9 * 0.01 + 0.01 * 0.99
#      = 0.0189
0.9 * 0.01 + 0.01 * 0.99
# P(D | +) = (P(+ | D) * P(D)) / P(+)
#          = (0.9 * 0.01) / 0.0189
#          = 0.4761905
(0.9 * 0.01) / 0.0189


# Aufgabe 6.5
# P()