# data_viz.R

# 📦 Load required package
library(ggplot2)

# 🧪 Dataset
data("mtcars")
head(mtcars)

# 📈 1. Scatter Plot: MPG vs Horsepower
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "MPG vs Horsepower", x = "Horsepower", y = "Miles per Gallon") +
  theme_minimal()

# 📊 2. Bar Chart: Count of Cars by Number of Cylinders
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "darkgreen") +
  labs(title = "Number of Cars by Cylinders", x = "Cylinders", y = "Count") +
  theme_minimal()

# 📉 3. Box Plot: MPG by Cylinder Type
ggplot(mtcars, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
  geom_boxplot() +
  labs(title = "MPG Distribution by Cylinders", x = "Cylinders", y = "MPG") +
  theme_minimal()

# 📋 Save the last plot to file
ggsave("boxplot_mpg_by_cyl.png")
