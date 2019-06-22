stp <- step(lm1)

lm2 <- lm(var_1~var_3+var_5+var_6, data = data)
summary(lm2)
round(coefficients(lm2),2)

exp <- predict(lm2)
res <- residuals(lm2)
view_lm2 <- data.frame(data[1],exp,res)
