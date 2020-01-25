# install.package("faraway")
data(bliss, package="faraway")
bliss

mod <- glm(formula = cbind(dead,alive) ~ conc, 
           data = bliss, 
           family = binomial)
summary(mod)
y = numeric()
x = rep(0:4,each=30)
for (i in 1:5) {
  y1 <- c(rep(1,bliss$dead[i]), rep(0,bliss$alive[i]))
  y = c(y,y1)
}
y
df= data.frame(cbind(y,x))
mod2 <- glm(formula = df$y ~ df$x, family = binomial)
summary(mod2)
