file <- "普及率.txt"

data <- read.delim(
  file,
  header = T,
  fileEncoding = "CP932"
)

year <- c(data[,1])
pene <- c(data[,2])

#plot(data,col="red")

glm <- glm(pene~year,family = binomial)

plot(year, pene, type = "l")
lines(year,fitted(glm),lty=2,col="red",lwd=2)

expe_3 <- cbind(data,fitted(glm))
