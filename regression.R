beta <- c(2,3,-4)
data <- data.frame(matrix(sample(1:100,3000,replace=T),ncol=3))
colnames(data) <- c("x1","x2","x3")

# y = X * beta
data$y <- c(as.matrix(data[,1:3])%*%beta)



# reduzierte regression
fit <- lm(y~x1,data=data)
summary(fit)
plot(data$x1,data$y)
abline(fit,col="red")



# volle regression
fit2 <- lm(y~.,data=data)
summary(fit2)




# mit fehler: y = X * beta + \epsilon
data$y <- c(as.matrix(data[,1:3])%*%beta+rnorm(1000,mean=0,sd=5))
fit3 <- lm(y~.,data=data)
summary(fit3)
