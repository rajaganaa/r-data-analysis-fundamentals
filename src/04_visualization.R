library(ggplot2)

# --- GGPLOT Visualization ---

data(mtcars)

# Task 1: Histogram of hwy mpg values from mtcars dataset
histogram = ggplot(mtcars, aes(x = mpg)) +  # 'mpg' should be used instead of 'hwy'
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Highway MPG Values", x = "Highway MPG", y = "Frequency")
print(histogram)

data(mtcars)
x=mtcars

# Task 2: Barplot of car counts per manufacturer with color fill defined by cyl count
barplot = ggplot(mtcars, aes(x = factor(am), fill = factor(cyl))) +
  geom_bar() +
  labs(title = "Car Counts per Manufacturer by Cylinder Count", x = "Manufacturer", y = "Car Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
print(barplot)

# Task 3: Scatterplot of volume versus sales using txhousing dataset
data(txhousing)
scatterplot = ggplot(txhousing, aes(x = sales, y = volume)) +
  geom_point(alpha = 0.7, color = "blue") +
  labs(title = "Scatterplot of Volume versus Sales", x = "Sales", y = "Volume")
print(scatterplot)

# Task 4: Scatterplot with adjusted alpha and color for better clarity
scatterplot_adjusted = ggplot(txhousing, aes(x = sales, y = volume)) +
  geom_point(alpha = 0.5, color = "green") +
  labs(title = "Scatterplot of Volume versus Sales (Adjusted)", x = "Sales", y = "Volume")
print(scatterplot_adjusted)

# Task 5: Scatterplot with a smooth fit line
scatterplot_smooth = ggplot(txhousing, aes(x = sales, y = volume)) +
  geom_point(alpha = 0.5, color = "red") +
  geom_smooth(method = "lm", se = FALSE) +  # Add linear model fit line without confidence intervals
  labs(title = "Scatterplot of Volume versus Sales with Smooth Fit Line", x = "Sales", y = "Volume")
print(scatterplot_smooth)

# --- Air Quality Visualization ---

# Load required packages
library(ggplot2)

# Create the scatterplot with ggplot2 using airquality dataset
scatterplot = ggplot(airquality, aes(x = Day, y = Ozone, color = factor(Month))) +
  geom_point() +  # Scatterplot
  geom_smooth(method = "lm", se = FALSE) +  # Add a smooth trend line
  labs(title = "Ozone Levels by Day of the Month", x = "Day of the Month", y = "Ozone Levels") +
  scale_color_discrete(name = "Month")  # Set legend title

# Print the plot
print(scatterplot)

# --- ChickWeight Visualization ---

# Load required packages
library(ggplot2)

data(ChickWeight)

# Plot Time on the x-axis and weight on the y-axis
plot = ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet), group = Chick)) +
  geom_line() +
  labs(title = "Weight over Time by Diet", x = "Time", y = "Weight") +
  scale_color_discrete(name = "Diet") +
  theme_minimal()
print(plot)

# --- Diamonds Visualization ---

# Create a histogram of carat sizes
histogram = ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.5, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Carat Sizes", x = "Carat", y = "Frequency")

# Refine the plot by filling bars based on the cut quality and limiting x-axis to diamonds up to 3 carats
refined_plot = histogram +
  geom_histogram(data = subset(diamonds, carat <= 3), aes(fill = cut), alpha = 0.7) +
  scale_fill_manual(values = c("Fair" = "red", "Good" = "orange", "Very Good" = "yellow", "Premium" = "green", "Ideal" = "blue")) +
  xlim(0, 3)

# Print the refined plot
print(refined_plot)
