library("twitteR")

data1 <- publicTimeline()
length(data1)

getTrends("daily",data=as.character(Sys.Data()-i))
par(mfrow = c(3,1))
for (i in 1:5)
{
	data1 <- getTrends("daily",data=as.character(Sys.Data()-i))
	rlt1_1 <- sapply(data1,function(x) x$getName())
	rlt1_2 <- table(rlt1_1)
	rlt1_3 <- order(rlt1_2, decreasing = TRUE)
	rlt1_4 <- rlt1_2[rlt1_3]
	rlt1_5 <- rlt1_4[1:5]
	print(rlt1_5)
	barplot(rlt1_5)
}