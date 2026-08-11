# r-programs# Data
year <- 2015:2023
sales <- c(120,128,135,142,150,158,165,172,180)
data <- data.frame(year,sales)

# Linear Trend
linear <- lm(sales ~ year, data)
summary(linear)
plot(year,sales,pch=16,main="Trend Analysis")
abline(linear,col="red")

# Quadratic Trend
quad <- lm(sales ~ year + I(year^2), data)
summary(quad)
lines(year,predict(quad),col="blue")

# Exponential Trend
exp <- lm(log(sales) ~ year, data)
summary(exp)
lines(year,exp(predict(exp)),col="green")
