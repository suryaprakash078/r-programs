# Sales data
sales <- c(120,125,132,140,151,160,172,185)

# Create time series
x <- ts(sales, start=2016)

# Original series
x
plot(x, type="o", col="blue", main="Original Time Series")

# First difference
d1 <- diff(x)
d1
plot(d1, type="o", col="red", main="First-Order Difference")

# Second difference
d2 <- diff(x, differences=2)
d2
plot(d2, type="o", col="darkgreen",
     main="Second-Order Difference")
