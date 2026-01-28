# 1. Vector
v <- c(10, 20, 30, 40)
cat("Vector:\n", v, "\n\n")

# 2. List
l <- list(name = "Alice", age = 20, marks = c(85, 90))
cat("List:\n")
print(l)
cat("\n")

# 3. Matrix
m <- matrix(1:6, nrow = 2)
cat("Matrix:\n")
print(m)
cat("\n")

# 4. Data Frame
df <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Ram", "Sam", "Tom"),
  Marks = c(80, 85, 90)
)
cat("Data Frame:\n")
print(df)
cat("\n")

# 5. Factor
f <- factor(c("Male", "Female", "Male", "Female"))
cat("Factor:\n")
print(f)