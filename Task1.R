library(readr)
library(ggplot2)

df<- read.csv("http://bit.ly/w-data")

model<- lm(Scores ~ Hours,df)
model

ggplot(df, aes(x = Hours,y = Scores))+geom_point()
plot(df)
abline(model, col = "green")


#or

plot(data$Hours, data$Scores, main = "Linear Regression Model", xlab = "Hours", ylab = "Scores")
abline(model, col = "green")


newdata <- data.frame(Hours = 9.25)
predictions <- predict(model, newdata)
predictions

