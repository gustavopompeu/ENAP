Abertura_CO <- read.csv("Abertura_CO.csv")

summary(Abertura_CO[,1:10])

plot(Abertura_CO$X1..DEC.Apurada, Abertura_CO$X2..FEC.Apurada)
mod <- lm(Abertura_CO$X2..FEC.Apurada~Abertura_CO$X1..DEC.Apurada)
summary(mod)
abline(mod$coefficients[1], mod$coefficients[2])

a2 <- Abertura_CO[Abertura_CO$ANO == 2018,]
plot(a2$X1..DEC.Apurada, a2$X2..FEC.Apurada, xlim=c(0,55), ylim=c(0,120))
mod <- lm(a2$X2..FEC.Apurada~ a2$X1..DEC.Apurada)
summary(mod)
abline(mod$coefficients[1], mod$coefficients[2])
identify(a2$X1..DEC.Apurada, a2$X2..FEC.Apurada, label=a2$Empresa, pos=T)