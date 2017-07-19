lebron <- read.csv('Lebron.csv')
jordan <- read.csv('Jordan.csv')
kobe <- read.csv('Kobe.csv')
View(lebron)
View(jordan)
View(kobe)

par(mfrow = c(2, 4))

boxplot(lebron$PTS, jordan$PTS, kobe$PTS, main = 'Points Per Game', ylab = 'Points', names = c('Lebron', 'Jordan', 'Kobe'), col = 3, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$TRB, jordan$TRB, kobe$TRB, main = 'Rebounds', ylab = 'Rebounds', names = c('Lebron', 'Jordan', 'Kobe'), col = 4, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$AST, jordan$AST, kobe$AST, main = 'Assists', ylab = 'Assists', names = c('Lebron', 'Jordan', 'Kobe'), col = 5, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$STL, jordan$STL, kobe$STL, main = 'Steals', ylab = 'Steals', names = c('Lebron', 'Jordan', 'Kobe'), col = 6, boxwex = 0.6, cex.main = 1.2)

boxplot(lebron$BLK, jordan$BLK, kobe$BLK, main = 'Blocks', ylab = 'Blocks', names = c('Lebron', 'Jordan', 'Kobe'), col = 7, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$FGp, jordan$FGp, kobe$FGp, main = 'FG Percentage', ylab = 'Percent', names = c('Lebron', 'Jordan', 'Kobe'), col = 8, boxwex = 0.6,cex.main = 1.2)
boxplot(lebron$X3Pp, jordan$X3p, kobe$X3Pp, main = '3 Point Percentage', ylab = 'Percent', names = c('Lebron', 'Jordan', 'Kobe'), col = 0, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$TOV, jordan$TOV, kobe$TOV, main = 'Turnovers', ylab = 'Turnovers', names = c('Lebron', 'Jordan', 'Kobe'), col = 10, boxwex = 0.6, cex.main = 1.2)
