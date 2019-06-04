train.data.bi <- binarize(train.data, minRating=4)

test.data.bi <- binarize(MovieLense[1*10], minRating=4)
test.data <- as(test.data.bi, "itemMatrix")

r.ar <- Recommender(train.data.bi, method="AR")
rec.ar <- predict(r.ar, test.data, type="topNList", n = 5)
result.ar <- do.call(Unzip, getList(rec.ar))



transactions <- train.data %>%
  binarize(minRating = 3) %>%
  as("matrix") %>%
  as("transactions")

aff <- affinity(transactions)
t <- aff %>%
  as("matrix") %>%
  as_tibble(rownames = NA) %>%
  rownames_to_column() %>%
  select(rowname, "Jaws (1975)")

t.df <- data.frame(t)

t.df <- t.df[order(t.df$Jaws..1975., decreasing = T),]
result.ar <- t.df[1:3,]
result.ar[,2] <- round(result.ar[,2],3)
colnames(result.ar) <- c("movie", "value")

write_csv(result.ar, path = "C:\\R\\EC_recommend\\result_ar.csv", col_names = T)
