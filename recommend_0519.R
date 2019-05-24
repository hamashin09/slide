install.packages("recommenderlab")
library(recommenderlab)
library(tidyverse)

data("MovieLense")

#recommender model create
r <- Recommender(MovieLense[1:900], method="UBCF")

#rating prediction using model
p <- predict(r, MovieLense[900:910], type="ratings")

#result
print(as(p, "matrix")[1:10,1:20])
#print(as(p,"list"))


#evaluation
e <- evaluationScheme(MovieLense, method="split", train=0.8, given=15)

##train
r.ubcf <- Recommender(getData(e, "train"), method="UBCF")
r.random <- Recommender(getData(e, "train"), method="RANDOM")

##prediction
p.ubcf <- predict(r.ubcf, getData(e, "known"), type="ratings")
p.random <- predict(r.random, getData(e, "known"), type="ratings")

###error
e <- rbind(calcPredictionAccuracy(p.ubcf, getData(e, "unknown")), calcPredictionAccuracy(p.random, getData(e, "unknown")))

##result
rownames(e) <- c("UBCF", "RANDOM")
print(e)


top <- as(predict(Recommender(MovieLense[1:900], method = "UBCF"), MovieLense[900:910], n=3),"list") 

top_df <- as.data.frame(t(data.frame(top)))

colnames(top_df) <- c("Top1", "Top2", "Top3")
rownames(top_df) <- names(top)


top.i <- as(predict(Recommender(MovieLense[1:900], method = "IBCF"), MovieLense[900:910], n=3),"list") 

top_df.i <- as.data.frame(t(data.frame(top.i)))

colnames(top_df.i) <- c("Top1", "Top2", "Top3")
rownames(top_df.i) <- names(top.i)


top.r <- as(predict(Recommender(MovieLense[1:900], method = "RANDOM"), MovieLense[900:910], n=3),"list") 

top_df.r <- as.data.frame(t(data.frame(top.r)))

colnames(top_df.r) <- c("Top1", "Top2", "Top3")
rownames(top_df.r) <- names(top.r)
