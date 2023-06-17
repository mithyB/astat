# Aufgabe 11.1
install.packages("ISLR")
library(ISLR)

# a) Untersuchen Sie den Datensatz mit head(Auto) und ?Auto.
head(Auto)
?Auto

# b) Stellen Sie das Modell für eine einfache lineare Regression mit mpg als Zielva-
#    riable und horsepower als Prädiktor auf.
# mpg = β0 + β1 * horsepower

# c) Verwenden Sie den lm()-Befehl um diese Regression durchzuführen.
#    Verwenden Sie den summary()-Befehl um die Resultate auszudrucken. Kom-
#    mentieren Sie diesen:
fit <- lm(mpg ~ horsepower, data = Auto)
summary(fit)
  
#    i) Gibt es einen Zusammenhang zwischen der Zielgrösse und dem Prädiktor?
# Der p-Wert für horsepower ist fast 0 und somit wird die Nullhypothese
# (β1 = 0) verworfen. Der Treibstoffverbrauch hängt von den PS ab.

#    ii) Wie interpretieren Sie die Koeffizienten für (intercept) und horsepower?
#        Ist der Zusammenhang positiv oder negativ?
# Der Wert 39.93 für den intercept gibt den Benzinverbrauch (miles pro
# gallon) bei 0 PS an. Dieser Wert hat hier natürlich keine praktische Bedeutung.
# Interessanter ist der Wert −0.15 für horsepower. Dieser bedeutet, dass pro
# PS dass Auto 0.15 Meilen weniger weit kommt für eine Gallone (≈ 3.8 l) Benzin.
# Der Zusammenhang ist also negativ: je mehr PS umso weniger weit kommt
# pro Gallone.
  
#    iii) Bestimmen Sie die Vertrauensintervalle (mit confint()) und interpretie-
#        ren Sie diese?
confint(fit)
# Die wahren Werte für intercept und horsepower liegen zu 95 % in den
# entsprechenden Intervallen. Die Intervalle sind recht schmall, so dass die
# Aussagekraft dieser Intervalle recht gross ist.
  
#    iv) Interpretieren Sie den R^2-Wert.
summary(fit)
# Der R^2-Wert ist 0.6059. Dieser gibt an, dass die Variabilität zu 60 % durch das Modell ist.
# Das ist ok, aber nicht besonders gut, da noch andere Prädiktoren Einfluss
# auf den Benzinverbrauch haben.

# d) Plotten Sie die Zielvariable und den Prädiktor mit der Regressionsgeraden (abline).
#    Wie interpretieren Sie diesen Plot im Vergleich zum summary()-Output.
plot(Auto$horsepower, Auto$mpg)
abline(lm(Auto$mpg ~ Auto$horsepower))


# Aufgabe 11.2

# a) Um mehr über den Datensatz zu erfahren, können wir ?Boston oder help(Boston)
#    eingeben. Laden Sie zuerst die MASS-Bibliothek.
library(MASS)
help(Boston)

# b) Welche Spaltennamen sind verfügbar?
colnames(Boston)
  
# c) Mit dem attach(...)-Befehl können wir R die Spaltennamen des Datensat-
#    zes Boston erkennen lassen.
attach(Boston)

# d) Wir werden damit beginnen, die lm()-Funktion zu verwenden, um ein einfa-
#    ches lineares Regressionsmodell mit medv als Antwort und lstat als Prädiktor
#    anzupassen.

#    i) Definieren Sie das einfache Regressionsmodell unter Verwendung der bei-
#       den obigen Variablen.
# medv = β0 + β1 * lstat

#    ii) Die grundlegende Syntax lautet lm(y~x,data) Dabei ist y die Antwort,
#       x der Prädiktor und Daten der Datensatz, in dem diese beiden Variablen
#       enthalten sind.
#       lm.fit <- lm(...)
#       summary(lm.fit)
lm.fit <- lm(Boston$medv~Boston$lstat, Boston)
summary(lm.fit)

# e) Wir können die Funktion names(...) verwenden, um herauszufinden, wel-
#    che anderen Informationen in lm.fit gespeichert sind.
names(lm.fit)

# f) Obwohl wir diese Grössen über den Namen zugreifen können (beispielsweise
#    wenden, um auf sie zuzugreifen.
#    Interpretieren Sie diese Werte und die entsprechenden p–Werte in der obigen
#    Zusammenfassung.
lm.fit$coefficients
coef(lm.fit)
# medv = 34.554 − 0.95 * lstat

# g) Um ein Vertrauensintervall für die Koeffizientenschätzungen zu erhalten, kön-
#    nen wir den Befehl confint(...) verwenden.
#    Geben Sie eine Interpretation dieser Werte an.
confint(lm.fit)

# h) Wir werden nun medv und lstat zusammen mit der Regression der kleins-
#    ten Quadrate auftragen Zeile mit den Funktionen plot(...) und abline() (siehe Übung 3).
#    Verwenden Sie lty = ..., pch = ... und col = ..., um Graphik schöner aussehen zu lassen.
plot(Boston$medv, Boston$lstat, col = "darkseagreen")
abline(lm(Boston$lstat ~ Boston$medv))

# i) Interpretieren Sie den Wert R^2 in der summary–Ausgabe oben.
# Der R^2-Wert ist 0.5441. Somit werden gut 54 % der Varianz durch das Modell
# (Regressionsgerade) erklärt.