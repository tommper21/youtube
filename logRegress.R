rm(list=ls())
library(AER)
data("SwissLabor")
df <- SwissLabor
X <- df[,2:dim(df)[2]]
y <- as.numeric(df$participation)-1 # response: no = 0, yes = 1
n <- dim(X)[1]
?SwissLabor
str(df)
head(df)
fit <- glm(participation~.+I(age^2),family = binomial(link = "logit"),data=df)
summary(fit)
phat <- predict(fit,X,type="response") # prediction
yhat <- phat
yhat[yhat>0.5] <- 1
yhat[yhat<0.5] <- 0 # predicted values
success_score <- mean(y*yhat+(1-y)*(1-yhat))

