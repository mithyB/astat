# Aufgabe 9.1

# Da die Standardabweichung der Messun-
# gen bekannt ist, können wir einen z-Test durchführen.

# Geben Sie die Modellannahmen, H0 (Nullhypothese), HA (Alternative Hypothese), den Verwerfungsbereich, 
# den Wert der Teststatistik und das Testergebnis explizit an.

# 12 Weinflaschen (im Durchschnitt 70cl)
# σ = 1.5 Zentiliter
# 5 %- Signifikanzniveau
x <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)

# Xi = Inhalt (in Zentiliter) der i-ten Weinflasche, i = 1, ... , n = 12.

# 1. Modell
# X1, ... , X12 i.i.d. ∼ N(μ, σ^2), σ^2 = 1.5^2 bekannt.

# 2. Nullhyptohese
# H0: μ = μ0 = 70

# Alternative Hypothese
# HA : μ < μ0

# 3. Verteilung der Teststatistik X12 unter H0:
# X12 ~ N(70, (1.5^2)/12)

# 4. Signifikanzniveau
# α = 5 %

# 5. Verwerfungsbereich für die Teststatistik
# K = (−∞, 69.29)
qnorm(p = 0.05, mean = 70, sd = sqrt(1.5^2/12))

# 6. Testentscheid
# x12 = 70.25
mean(x)

# x12 !∈ K → H0 beibehalten. Es ist also durchaus plausibel, dass der Weinhändler
# den Wein korrekt abfüllt.
# Der Testentscheid ist an sich von vorneherein klar. Wir machen einen Test nach unten
# und x12 ist schon grösser als 70.


# Aufgabe 9.2

# Die Standardabweichung der Abfüllungen ist nicht bekannt. Somit machen wir einen t-Test.

# a) Führen Sie den Test durch und treffen Sie den Testentscheid mit dem p-Wert.
#    t.test(...)
wine <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)
t.test(wine, mu = 70, alternative = "less")

# b) Was ändert sich verglichen zur Aufgabe 9.1?
pnorm(q = mean(wine), mean = 70, sd = sqrt(1.5^2/12))


# Aufgabe 9.3

# 16 Brote (mind. 50g)
# σ = 3
# 5 %-Signifikanzniveau
bread <- c(46, 48, 52, 49, 46, 51, 52, 47, 49, 44, 48, 51, 49, 50, 53, 47)
  
# a) Stellen Sie die Null- und Alternativhypothese auf und führen Sie einen Hypo-
#    thesentest auf dem 5 %-Signifikanzniveau durch.
# Nullhyptohese
# H0: μ = μ0 = 50

# Alternative Hypothese
# HA : μ < μ0

# α = 5 %
pnorm(q = mean(bread), mean = 50, sd = sqrt(3^2/16))

# b) Dem Studenten kommen bei seiner Auswertung Bedenken wegen des kleines
#    Stichprobenumfangs von n = 16. Er untersucht deshalb noch einmal das Bröt-
#    chengewicht, diesmal für n = 100 Brötchen. Er erhält denselben Mittelwert in
#    der Stichprobe wie bei den n = 16 Brötchen.
#    Kommt er zur selben Testentscheidung wie in a)? Begründen Sie die Antwort.
pnorm(q = mean(bread), mean = 50, sd = sqrt(3^2/100))

# c) Der Student ist nun auch misstrauisch gegenüber der bekannten Standardab-
#    weichung und möchte sich nur auf die gegebenen Daten verlassen. Wie geht er
#    vor? Führen Sie den Hypothesentest durch.
t.test(bread, mu = 50, alternative = "less")
