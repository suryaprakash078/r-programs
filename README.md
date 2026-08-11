
sales <- c(120,125,132,140,151,160,172,185,197,210)

# Create time series
x <- ts(sales, start=2015)

# Original series
plot(x, type="o", col="blue", main="Original Time Series")

# First difference
d <- diff(x)
plot(d, type="o", col="red", main="First-Order Difference")

# ACF and PACF
acf(d, main="ACF")
pacf(d, main="PACF")

# Fit ARIMA(0,1,1)
library(forecast)
fit <- Arima(x, order=c(0,1,1))
summary(fit)

# Forecast next 5 years
f <- forecast(fit, h=5)
f
plot(f, main="ARIMA(0,1,1) Forecast")
