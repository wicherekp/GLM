library(glmnet)

setwd("~/glm")
df = read.table("BinRegrIdentLink.dat",header=TRUE)
head(df)


mod <- glm(formula = y ~ x, data=df,
           family = quasi(variance = "mu(1-mu)"), 
           start = c(0.5,0))
0))
summary(mod)

mod$coefficients

plot(df$x,df$y)
abline(mod$coefficients)
