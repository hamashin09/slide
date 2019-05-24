#evaluation
e <- evaluationScheme(MovieLense[11:940], method="split", train=0.8, given=15)

##train
r.ubcf <- Recommender(getData(e, "train"), method="UBCF")
r.ibcf <- Recommender(getData(e, "train"), method="IBCF")

##prediction
p.ubcf <- predict(r.ubcf, getData(e, "known"), type="topNList")
p.ibcf <- predict(r.ibcf, getData(e, "known"), type="topNList")

p.ubcf <- predict(r.ubcf, getData(e, "known"), type="ratings")
p.ibcf <- predict(r.ibcf, getData(e, "known"), type="ratings")


###error
er <- rbind(calcPredictionAccuracy(p.ubcf, getData(e, "unknown"), given=15, goodRating=5), 
           calcPredictionAccuracy(p.ibcf, getData(e, "unknown"), given=15, goodRating=5))

##result
rownames(er) <- c("UBCF", "IBCF")
print(er)

#plot(e)
#top <- as(p.ubcf, "list")


top <- as(predict(Recommender(MovieLense[1:900], method = "UBCF"), MovieLense[900:910], n=3),"list") 

top_df <- as.data.frame(t(data.frame(top)))

colnames(top_df) <- c("Top1", "Top2", "Top3")
rownames(top_df) <- names(top)


top.i <- as(predict(Recommender(MovieLense[1:900], method = "IBCF"), MovieLense[900:910], n=3),"list") 

top_df.i <- as.data.frame(t(data.frame(top.i)))

colnames(top_df.i) <- c("Top1", "Top2", "Top3")
rownames(top_df.i) <- names(top.i)