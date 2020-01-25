library(glmnet)
library(faraway)
data(bliss, package="faraway")
bliss

modlog <- modl <- glm(cbind(dead,alive) ~ conc, family=binomial, bliss)
summary(modl)$coef

attributes(modl)


plot(bliss$conc, bliss$dead/30)

t <- seq(0,4,by=0.01)

logist = function(x,a,b){
  exp(a+b*x)/ (1+exp(a+b*x))
}

a <- as.numeric(modl$coefficients[1])
b <- as.numeric(modl$coefficients[2])
tt <- logist(t,a,b)
lines(t,tt)


logist(5,a,b)

glm.fit(df$x,df$y)

summary(modl)

anova(modl,test="Chi")

anova(modl,test="LRT")


s <- summary(modl)
r <- s$coefficients
r[,4]  

residuals(modl,type="pearson")
sum(residuals(modlog,type="pearson")^2)

deviance(modl)
residuals(modlog,type="working")
residuals(modlog,type="response")
