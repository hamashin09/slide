lm1 <- lm(var_1~var_2+var_3+var_4+var_5+var_6,data = data)
summary(lm1)
round(coefficients(lm1),2)

exp <- predict(lm1)
res <- residuals(lm1)
view_lm1 <- data.frame(data[,1],exp,res)
