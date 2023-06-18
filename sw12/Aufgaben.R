# Aufgabe 12.1

# Modell mit drei Prädiktoren, x1 , x2 und x3 -> lm(y ~ x1 + x2 + x3)
# Regressionskoeffizienten -> summary()

# a) Passen Sie ein multiples lineares Regressionsmodell mit der Zielvariable medv
#    und den Prädiktoren lstat und age an.
#    Definieren Sie das Modell und interpretieren Sie alle Werte in der Ausgabe
#    summary(), die wir besprochen haben (Koeffizienten, seine p-Werte, R^2-Wert,
#    p-Wert der F-Statistik).
# medv = β0 + β1 · lstat + β2 · age
fit <- lm(medv ~ lstat + age, data = Boston)
summary(fit)
# βb0 = 33.22; βb1 = −1.03; βb2 = 0.03
# medv = 33.22 − 1.03 · lstat + 0.03 · age
                                     
# b) Der Boston-Datensatz enthält 13 Variablen, und es wäre also umständlich all
#    dies eingeben zu müssen, um eine Regression mit allen Prädiktoren. Stattdessen
#    können wir die folgende Kurzhand lm(medv ~., Daten = Boston) ver-
#    wenden.
#    Interpretieren Sie in der summary() Ausgabe den Koeffizienten von age und
#    den entsprechenden p-Wert, vergleichen Sie diesen mit der Ausgabe in a) und
#    erklären Sie den Unterschied.
fit <- lm(medv ~ ., data = Boston)
summary(fit)

# c) Der Wert von R^2
#    ist größer als der in a) berechnete Wert. Erläutern Sie.
# Je mehr Variablen Sie haben, desto größer ist der R^2-Wert. Das bedeutet, dass
# die R^2 kein guter Indikator ist, um verschiedene Modelle zu vergleichen.

# d) Mit Hilfe der Funktion lm() ist es einfach, Interaktionsterme in ein lineares
#    Modell aufzunehmen. Die Syntax lstat:black weist R an, einen Interaktions-
#    term zwischen lstat und black.
#    Die Syntax lstat * age beinhaltet gleichzeitig lstat, age, und der Interak-
#    tions-Begriff lstat × age als Prädiktoren; es ist eine Abkürzung für lstat
#    + age + lstat:age.
#    Diskutieren Sie nochmals alle Werte in der summary() von lstat*age wie in
#    a).
# Modell: medv = β0 + β1 · lstat + β2 · age + β12 · lstat*age
fit <- lm(medv ~ lstat * age, data = Boston)
summary(fit)


# Aufgabe 12.1
library(ISLR)
head(Auto)

# a) Produzieren Sie mit pairs Streudiagramme, die alle Variablen des Datensatzes
#    enthält.
Auto.1 <- within(Auto, rm(name))
head(Auto.1)
pairs(Auto.1, col = "darkseagreen")

# b) Berechnen Sie die Korrelationsmatrix zwischen den Variablen mit cor(). Dazu
#    müssen wir zuerst die Variable name entfernen, da diese qualitativ ist und vor
#    allem kaum einen Einfluss auf den Verbrauch hat.
#    Interpretieren Sie die Werte für horsepower und displacement mit den Streu-
#    diagrammen oben.
round(cor(Auto.1), 2)

# c) Wir verwenden lm() um eine multiple Regression mit der Zielgrösse mpg und
#    allen anderen Variablen (ausser name) als Prädiktoren durchzuführen. Verwen-
#    den Sie wieder Output des summary()-Befehls zu interpretieren.
fit <- lm(mpg ~ ., data = Auto.1)
summary(fit)

#    i) Gibt es einen Zusammenhang zwischen den Prädiktoren und der Zielvaria-
#       ble? Begründen Sie dies mit dem p-Wert zum F-Wert.
# Der p-Wert zum zugehörigen F-Wert ist praktisch 0 und somit besteht ein
# statistisch signifikanter Zusammenhang zwischen Zielvariable und den Prä-
# diktoren.

#    ii) Welche Prädiktoren scheinen statistisch signifikant einen Einfluss auf die
#        Zielvariable zu haben?
# Dies sind die Koeffizienten mit ** oder *** (displacement, weight,
# year und origin).

#    iii) Was deutet der Koeffizient für year an?
# Der Koeffizient für year ist positiv. Das heisst, man mit jüngeren Autos
# weiter pro Gallone Benzin kommt. Die neueren Autos sind als im Allge-
# meinen sparsamer.

# d) Untersuchen das Modell aus c) noch auf Interaktionseffekte.
fit <- lm(mpg ~ weight * year, data = Auto)
summary(fit)

# Der p-Wert des Interaktionsterm ist von der Grössenordnung 10−14, also sehr
# nahe bei 0. Die Nullhypothese, dass keine Interaktion vorliegt, wird also ver-
# worfen.
# Dies lässt sich damit erklären, dass das Gewicht mit den jüngeren Autos immer
# kleiner geworden ist.