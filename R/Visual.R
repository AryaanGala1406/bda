# Load the built-in iris dataset
data(iris)

# Data Processing and Exploration
print("Head of the Iris Dataset:")
print(head(iris))

print("Summary of the Iris Dataset:")
print(summary(iris))

# Check for any missing values
print("Total Missing Values:")
print(sum(is.na(iris)))

# Load the ggplot2 library for visualization
library(ggplot2)
# Rscript -e "install.packages('ggplot2', repos='https://cloud.r-project.org')"

# Plot 1: Histogram for Sepal Length distribution
hist_plot <- ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.2, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Sepal Length", x = "Sepal Length", y = "Frequency")

# Plot 2: Box plot to compare Petal Width across species
box_plot <- ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species)) +
  geom_boxplot() +
  labs(title = "Petal Width by Species", x = "Species", y = "Petal Width")

# Plot 3: Scatter plot of Sepal Length vs. Sepal Width
scatter_plot <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Sepal Length vs. Sepal Width", x = "Sepal Length (cm)", y = "Sepal Width (cm)")

# Print plots
print(hist_plot)
print(box_plot)
print(scatter_plot)
