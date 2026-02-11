# r-programs
prgm 12
 
library(ggplot2)

data(mtcars)

data_subset <- mtcars[, c("mpg", "hp", "wt")]

scaled_data <- scale(data_subset)

set.seed(123)

wss <- sapply(1:10, function(k) {
  kmeans(scaled_data, centers = k, nstart = 25)$tot.withinss
})

plot(1:10, wss,
     type = "b",
     pch = 19,
     frame = FALSE,
     xlab = "Number of clusters (k)",
     ylab = "Total within cluster sum of squares")

set.seed(123)

kmeans_model <- kmeans(scaled_data, centers = 3, nstart = 25)

mtcars$cluster <- as.factor(kmeans_model$cluster)

ggplot(mtcars, aes(x = mpg, y = hp, color = cluster)) +
  geom_point(size = 3) +
  labs(title = "K-means Clustering on mtcars Dataset",
       x = "Miles Per Gallon",
       y = "Horsepower") +
  theme_minimal()