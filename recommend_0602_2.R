library(tidyverse)
library(recommenderlab)

# データセットのロード
data('MovieLense')

##data for train
##use data[11:300] for train and evaluate
train.data <- MovieLense[11:300]

#----------------------------------------
#evalustion of recommender
##evaluation data
e <- evaluationScheme(train.data, method="split", train=0.8, given=15)

###create recommender
r.ubcf <- Recommender(getData(e,"train"), method="UBCF")
r.ibcf <- Recommender(getData(e, "train"), method="IBCF")

###prediction for known data
p.ubcf <- predict(r.ubcf, getData(e, "known"), type="ratings")
p.ibcf <- predict(r.ibcf, getData(e, "known"), type="ratings")

err <- rbind(calcPredictionAccuracy(p.ubcf, getData(e, "unknown")), calcPredictionAccuracy(p.ibcf, getData(e, "unknown")))
rownames(err) <- c("UBCF", "ICBF") 

###evaluation result to csv
#err.t <- rbind(data.frame(),calcPredictionAccuracy(p.ubcf, getData(e, "unknown")), calcPredictionAccuracy(p.ibcf, getData(e, "unknown")))
err.result <- data.frame(err)
err.result <- data.frame("user"=rownames(err.result), err.result)
write_csv(err.result, path = "/Users/uragami/Documents/Rcode/EC/err_result.csv", col_names = T)
#----------------------------------------

#prediction of new user

#rec.ubcf <- predict(r.ubcf, MovieLense[1:10], type="ratings")
#rec.ubcf.m <- predict(r.ubcf, MovieLense[1:10], type="ratingMatrix")
#->元データのrating済みのデータが入っている。

rec.ubcf <- predict(r.ubcf, MovieLense[1:10], type="topNList", n = 5)
rec.ibcf <- predict(r.ibcf, MovieLense[1:10], type="topNList", n = 5)

#l <- getList(rec.ubcf.t)
#d <- as(rec.ubcf.t, "matrix") %>% as.data.frame()
#l[[3]]

#save result 

##function difinition
Unzip <- function(...) rbind(data.frame(), ...)

##convert topNList -> list -> data.frame
result.ubcf <- do.call(Unzip, getList(rec.ubcf))
result.ibcf <- do.call(Unzip, getList(rec.ibcf))

colnames(result.ubcf) <- c("top1", "top2", "top3", "top4", "top5")
colnames(result.ibcf) <- c("top1", "top2", "top3", "top4", "top5")

result.ubcf <- data.frame("user"=rownames(result.ubcf), result.ubcf)
result.ibcf <- data.frame("user"=rownames(result.ibcf), result.ibcf)

#result to csv
write_csv(result.ubcf, path = "/Users/uragami/Documents/Rcode/EC/result_ubcf.csv", col_names = T)
write_csv(result.ibcf, path = "/Users/uragami/Documents/Rcode/EC/result_ibcf.csv", col_names = T)

