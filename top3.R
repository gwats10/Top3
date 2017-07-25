#Sets the working directory
setwd("C:/Users/Greg/Documents/R")

#Imports stats into dataframe
lebron <- read.csv('Lebron.csv')
jordan <- read.csv('Jordan.csv')
kobe <- read.csv('Kobe.csv')


#Creates plot layout
par(mfrow = c(2, 4))

#Generates boxplots of stats
boxplot(lebron$PTS, jordan$PTS, kobe$PTS, main = 'Points Per Game', ylab = 'Points', names = c('Lebron', 'Jordan', 'Kobe'), col = 3, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$TRB, jordan$TRB, kobe$TRB, main = 'Rebounds', ylab = 'Rebounds', names = c('Lebron', 'Jordan', 'Kobe'), col = 4, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$AST, jordan$AST, kobe$AST, main = 'Assists', ylab = 'Assists', names = c('Lebron', 'Jordan', 'Kobe'), col = 5, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$STL, jordan$STL, kobe$STL, main = 'Steals', ylab = 'Steals', names = c('Lebron', 'Jordan', 'Kobe'), col = 6, boxwex = 0.6, cex.main = 1.2)

boxplot(lebron$BLK, jordan$BLK, kobe$BLK, main = 'Blocks', ylab = 'Blocks', names = c('Lebron', 'Jordan', 'Kobe'), col = 7, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$FGp, jordan$FGp, kobe$FGp, main = 'FG Percentage', ylab = 'Percent', names = c('Lebron', 'Jordan', 'Kobe'), col = 8, boxwex = 0.6,cex.main = 1.2)
boxplot(lebron$X3Pp, jordan$X3p, kobe$X3Pp, main = '3 Point Percentage', ylab = 'Percent', names = c('Lebron', 'Jordan', 'Kobe'), col = 0, boxwex = 0.6, cex.main = 1.2)
boxplot(lebron$TOV, jordan$TOV, kobe$TOV, main = 'Turnovers', ylab = 'Turnovers', names = c('Lebron', 'Jordan', 'Kobe'), col = 10, boxwex = 0.6, cex.main = 1.2)

#Generates summary of assists
summary(lebron$AST)
summary(jordan$AST)
summary(kobe$AST)


#Creates plot layout
par(mfrow = c(2, 3))

#Generates plots of 3 pointers attempted and 3 pointers made
plot(lebron$Age, lebron$X3P, main = 'Lebron 3 pointers', xlab = 'Age', ylab = 'Shots', type = 'l', ylim = c(0, 8), col = 3)
lines(lebron$Age, lebron$X3PA, col = 2)
legend(19, 8, c('Made', 'Attempted'), lty=c(1,1), col=c(3, 2), cex = 0.85)

plot(jordan$Age, jordan$X3P, main = 'Jordan 3 pointers', xlab = 'Age', ylab = 'Shots', type = 'l', ylim = c(0, 8), col = 3)
lines(jordan$Age, jordan$X3PA, col = 2)
legend(21, 8, c('Made', 'Attempted'), lty=c(1,1), col=c(3, 2), cex = 0.85)

plot(kobe$Age, kobe$X3P, main = 'Kobe 3 pointers', xlab = 'Age', ylab = 'Shots', type = 'l', ylim = c(0, 8), col = 3)
lines(kobe$Age, kobe$X3PA, col = 2)
legend(18, 8, c('Made', 'Attempted'), lty=c(1,1), col=c(3, 2), cex = 0.85)

#Generates plots of 3 point percentage
plot(lebron$Age, lebron$X3Pp, pch = 25, col = 2, bg = 2, main = 'Lebron 3 Percentage', xlab = 'Age', ylab = 'Percent', ylim = c(0.1, 0.5))
plot(jordan$Age, jordan$X3p, pch = 25, col = 2, bg = 2, main = 'Jordan 3 Percentage', xlab = 'Age', ylab = 'Percent', ylim = c(0.1, 0.5))
plot(kobe$Age, kobe$X3Pp, pch = 25, col = 2, bg = 2, main = 'Kobe 3 Percentage', xlab = 'Age', ylab = 'Percent', ylim = c(0.1, 0.5))

#Generates summary of 3 point percentages
summary(lebron$X3Pp)
summary(jordan$X3p)
summary(kobe$X3Pp)

#Generates 3 point percentage before and after 1st retirement
a <- jordan$X3p[1:7]
b<- jordan$X3p[7:11]

mean(a)
mean(b)


#Creates plot layout
par(mfrow = c(2, 3))

#Generates barplots of steals
barplot(lebron$STL, main = "Lebron", cex.main = 1.4, font.main = 1, xlab = '', ylab = 'Steals', cex.lab = 1.2, ylim = c(0, 3.5), col = 3)
barplot(jordan$STL, main = "Jordan", cex.main = 1.4, font.main = 1, xlab = '', ylab = 'Steals', cex.lab = 1.2, ylim = c(0, 3.5), col = 5)
barplot(kobe$STL, main = "Kobe", cex.main = 1.4, font.main = 1, xlab = '', ylab = 'Steals', cex.lab = 1.2, ylim = c(0, 3.5), col = 4)

#Generate summary of steals
summary(lebron$STL)
summary(jordan$STL)
summary(kobe$STL)

#Generates barplots of blocks
barplot(lebron$BLK, main = "Lebron", cex.main = 1.4, font.main = 1, xlab = '', ylab = 'Blocks', cex.lab = 1.2, ylim = c(0, 1.7), col = 3)
barplot(jordan$BLK, main = "Jordan", cex.main = 1.4, font.main = 1, xlab = '', ylab = 'Blocks', cex.lab = 1.2, ylim = c(0, 1.7), col = 5)
barplot(kobe$BLK, main = "Kobe", cex.main = 1.4, font.main = 1, xlab = '', ylab = 'Blocks', cex.lab = 1.2, ylim = c(0, 1.7), col = 4)

#Generate summary of blocks
summary(lebron$BLK)
summary(jordan$BLK)
summary(kobe$BLK)