monte <- function(n) 
{
	count <- 0 
	#initilize variable named count that count 
	#how many random number gives in the range of  1 > 0.5 
	for (i in 1:n)
	{# Repeat n times 
		if(runif(1)>0.5) 
		{# if the rundom number given by the function funif() in the range of  1 > 0.5 
		 #then increment count by one
			count <- count +1 
		}
	}
	#devide counter by total number of random number we pick
	return (count/n)

}
plotMonte <- function(n)
{
	count <- c()
	#define array(or vector) named count
	for (i in 1:n)
	{
		count <- c(count, monte(i))
		#stack a pair of count and result from monte function in to count 
	}
	plot(count, type = "l")
	#pot the result 
	par(new = T)
	#allow rewrite plot
}
totalpoint <- 10000
monte(totalpoint)
#call monte function with n = totalpoint
plotMonte(totalpoint)
#call plotMonte function with n = totalpoint
abline(h = 0.5, col = "red")
#drow a red line with hight = 0.5