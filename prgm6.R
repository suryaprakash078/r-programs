# Read CSV file
data <- read.csv("data.csv")

# Display first few rows
cat("First 5 rows of data:\n")
print(head(data))
cat("\n")

# Display structure of data
cat("Structure of data:\n")
str(data)
cat("\n")

# Summary of data
cat("Summary of data:\n")
print(summary(data))
cat("\n")

# Find number of rows and columns
cat("Number of rows:", nrow(data), "\n")
cat("Number of columns:", ncol(data), "\n\n")

# Find mean of a numeric column (example: Marks)
cat("Mean of Marks column:\n")
print(mean(data$Marks, na.rm = TRUE))