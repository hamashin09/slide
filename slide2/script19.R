file <- "売上高と各種要因.txt"

data <- read.delim(
  file,
  header = T,
  row.names = 1,
  fileEncoding = "CP932"
)

var_1 <- c(data[,1])
var_2 <- c(data[,2])
var_3 <- c(data[,3])
var_4 <- c(data[,4])
var_5 <- c(data[,5])
var_6 <- c(data[,6])

coef <- cor(data)
