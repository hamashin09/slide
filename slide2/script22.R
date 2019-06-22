lm3 <- lm(var_1~(var_2+var_3+var_4+var_5+var_6)^2, data = data)
summary(lm3)

lm4 <- step(lm3)

exp <- predict(lm4)
res <- residuals(lm4)
view_lm4 <- data.frame(data[1],exp,res)
round(coefficients(lm4),2)
