# r-programs
library(ggplot2)
data <- data.frame(
x = c(10, 20, 30, 40, 50),
y = c(15, 25, 35, 45, 55)
)
print("Data:")
print(data)
model <- lm(y ~ x, data = data)
summary(model)
plot(data$x, data$y, main = "Scatter Plot with Regression Line",
xlab = "X", ylab = "Y", pch = 19, col = "blue")
abline(model, col = "red")
predicted_y <- predict(model, data)
data$predicted_y <- predicted_y
print("Data with Predictions:")
print(data)
ggplot(data, aes(x = x, y = y)) +
geom_point(color = "blue") +
geom_line(aes(y = predicted_y), color = "red") +
labs(title = "Observed vs. Predicted Values",
x = "X", y = "Y")


program 11
 
# Load necessary libraries
installed.packages("caret")
# or Goto Tools -> Install packages -> caret -> install
library(caret)
library(class)
library(ggplot2)
# Load data
data("PlantGrowth")
str(PlantGrowth)
head(PlantGrowth)
# Ensure group is a factor
PlantGrowth$group <- as.factor(PlantGrowth$group)
set.seed(123)
# Fix: removed the semicolon in <;-
trainIndex <- createDataPartition(PlantGrowth$group, p = 0.7, list = FALSE)
# Split the data
trainData <- PlantGrowth[trainIndex, ]
testData <- PlantGrowth[-trainIndex, ]
# Fix: replaced curly quotes with straight quotes
trainX <- trainData[, "weight", drop = FALSE]
trainY <- trainData$group
testX <- testData[, "weight", drop = FALSE]
testY <- testData$group
set.seed(123)
# Run KNN
knn_pred <- knn(train = trainX, test = testX, cl = trainY, k = 3)
# Evaluate the model
# Note: knn_pred must be compared against testY
conf_matrix <- confusionMatrix(knn_pred, testY)
print(conf_matrix)
# Visualization
ggplot(PlantGrowth, aes(x = group, y = weight, color = group)) +
geom_point(size = 3) +
labs(title = "Plant Growth Dataset: Group Vs. Weight",
x = "Group", y = "Weight") +
theme_minimal()
