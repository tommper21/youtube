x <- 1:100
f <- function(x) 1-prod(seq(365,366-x)/365)
pr <- sapply(x,f)
plot(x,pr,type="l",xlab="Number of People",ylab="Probability")
abline(v=30,col=3)
abline(h=f(30),col=3)
text(35,y=0.69,paste("(",30,",",round(f(30), digits=2),")"))
points(30,f(30),col=3,pch=16)
