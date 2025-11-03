# Basic Arithmetic Operations 
x <- 5 
y <- 10 
result_add <- x + y 
result_sub <- x - y 
result_mul <- x * y 
result_div <- x / y

# Vector Operations 
vector1 <- c(1, 2, 3, 4, 5) 
vector_sum <- sum(vector1) 
vector_mean <- mean(vector1)

# Creating a Matrix
matrix1 <- matrix(1:9, nrow = 3, ncol = 3) 

# Creating a Data Frame
df <- data.frame(Name = c("John", "Alice", "Bob"), 
                 Age = c(25, 30, 22))

# Display Results
cat("Arithmetic Results:\n", result_add, result_sub, result_mul, result_div, "\n")
cat("Vector Operations:\n", vector_sum, vector_mean, "\n") 
print(matrix1)

cat("\nData Frame:\n")
print(df)
