library(caret)
library(class)
library(ggplot2)

data("PlantGrowth")
str(PlantGrowth)
head(PlantGrowth)

PlantGrowth$group <- as.factor(PlantGrowth$group)

set.seed(123)

trainIndex <- createDataPartition(PlantGrowth$group, p = 0.7, list = FALSE)

# Split the data
trainData <- PlantGrowth[trainIndex, ]
testData <- PlantGrowth[-trainIndex, ]

# Prepare features and labels
trainX <- trainData[, "weight", drop = FALSE]
trainY <- trainData$group
testX <- testData[, "weight", drop = FALSE]
testY <- testData$group

set.seed(123)

# Run KNN
knn_pred <- knn(train = trainX, test = testX, cl = trainY, k = 3)

# Evaluate the model
conf_matrix <- confusionMatrix(knn_pred, testY)
print(conf_matrix)

# Visualization
ggplot(PlantGrowth, aes(x = group, y = weight, color = group)) +
  geom_point(size = 3) +
  labs(title = "Plant Growth Dataset: Group Vs. Weight",
       x = "Group",
       y = "Weight") +
  theme_minimal()
