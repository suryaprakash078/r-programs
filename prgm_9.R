x <- c(10,20,30,40,50)
y <- c(15,25,35,45,55)

cat("Data vector x:",x,"\n")
cat("Data vector y:",y,"\n")

mean_x <-mean(x)
mean_y <-mean(y)

cat("mean of x:",mean_x,"\n")
cat("mean of y:",mean_y,"\n")

var_x <- var(x)
var_y <- var(y)

cat("variance of x:",var_x,"\n")
cat("variance of y:",var_y,"\n")

sd_x <- sd(x)
sd_y <- sd(y)

cat("Standard deviation of x:",sd_x,"\n")
cat("Standard deviation of y:",sd_y,"\n")


covariance <- cov(x,y)
cat("Covariance between x and y:",covariance,"\n") 

corelation <- cor(x,y)
cat("Corelation between x and y:",corelation,"\n") 