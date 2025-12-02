library(dplyr)

# --- Data Frames ---

# 1.	Create a data frame named df_students with the following columns: ID, Name, Age, and Grade. Populate it with data for 5 students. Perform the following operations:
# 1.	Add a new column Passed that indicates with TRUE or FALSE whether each student passed (assume a passing grade is at least 60).
# 2.	Select and print only the rows of students who are 18 years or older.

# Sample student data
students = data.frame(
  ID = c(1001, 1002, 1003, 1004, 1005),
  Name = c("RAJA", "SACHIN", "ROJA", "RAHUL", "JHONY"),
  Age = c(19, 18, 20, 17, 22),
  Grade = c(85, 72, 90, 55, 68)
)

# Create data frame
df_students = students
df_students

# Add Passed column
df_students$Passed = df_students$Grade >= 60
df_students$Passed

# Select students 18 or older (consider row names for clarity)
print(df_students[df_students$Age >= 18, ])

# --- Merging Data Frames ---

# 2.	Suppose you have two data frames, df_A and df_B. df_A contains student IDs and names, while df_B contains student IDs and their corresponding courses.
#  Write R code to merge these data frames so each row contains a student’s ID, name, and course.

df_A = data.frame(
    student_IDs = c(1001, 1002, 1003, 1004, 1005),
    Name = c("RAJA", "SACHIN", "ROJA", "RAHUL", "JHONY")
)
df_A

df_B = data.frame(
    student_IDs = c(1001, 1002, 1003, 1004, 1005),
    courses = c("EEE", "ECE", "MECH", "CSE", "IT")
)
df_B

merged_df = merge(df_A, df_B, by = "student_IDs", all.x = TRUE)  # all.x = TRUE keeps all rows from df_A
merged_df

# --- Data Aggregation ---

# 3.	Given a data frame df_sales with columns Date, ProductID, Quantity, and Price, write R code to calculate the total sales (Quantity * Price) for each product.
# 1.	Note: Generate your own data set.

# Sample sales data
df_sales = data.frame(
  Date = as.Date(c("2024-04-01", "2024-04-01", "2024-04-02", "2024-04-02")),
  ProductID = c(101, 102, 101, 103),
  Quantity = c(2, 1, 3, 4),
  Price = c(10, 15, 10, 5)
)

# Total sales per product
total_sales = df_sales %>%
  group_by(ProductID) %>%
  summarize(TotalSales = sum(Quantity * Price))

print(total_sales)

# --- Iris Dataset Analysis ---

# 4.	For iris data set.
# 1.	Calculate the average Sepal.Length for each Species.
# 2.	Create a new column Sepal.Area which is the product of Sepal.Length and Sepal.Width.
# 3.	Find the species with the highest average Sepal.Area.

# Load the iris dataset
data(iris)

# Average Sepal Length per Species
avg_sepal_length = iris %>%
  group_by(Species) %>%
  summarize(AvgLength = mean(Sepal.Length))

print(avg_sepal_length)

# Sepal Area and Species with highest average
iris$Sepal.Area = iris$Sepal.Length * iris$Sepal.Width
iris$Sepal.Area

highest_area_species = iris %>%
  group_by(Species) %>%
  summarize(AvgArea = mean(Sepal.Area)) %>%
  arrange(desc(AvgArea)) %>%
  head(1)  # Get the first row (species with highest average)

print(highest_area_species)

# --- Air Quality Analysis ---

# 5.	For airquality data set.
# 1.	Calculate the average Ozone level for each month, excluding missing values.
# 2.	Determine the month with the highest average Ozone level.
# 3.	Create a new data frame with Month and Temp columns, excluding days with missing Ozone values.

library(airquality)  # Load airquality data set

data(airquality)

# Average Ozone per month (excluding missing values)
avg_ozone_month = airquality %>%
  filter(!is.na(Ozone)) %>%  # Filter out missing Ozone values
  group_by(Month) %>%
  summarize(AvgOzone = mean(Ozone))

print(avg_ozone_month)

# Month with highest average Ozone
highest_ozone_month <- avg_ozone_month %>%
  arrange(desc(AvgOzone)) %>%
  head(1)  # Get the first row (month with highest average)

print(highest_ozone_month)

# Filter days with missing Ozone and create new data frame
filtered_airquality <- airquality[complete.cases(airquality[, "Ozone"]), ]
new_df <- filtered_airquality[, c("Month", "Temp")]

print(new_df)

# --- Dplyr Operations ---

# 1.	Return rows of cars that have an mpg value greater than 20 and 6 cylinders.
data(mtcars)

# Filter and select cars with mpg > 20 and cyl = 6
filtered_mtcars = mtcars %>%
  filter(mpg > 20, cyl == 6) %>%
  select(mpg, hp)  # Select mpg and hp columns
print(filtered_mtcars)

# 2.	Reorder the Data Frame by cyl first, then by descending wt.
# Reorder by cyl and wt (descending)
reordered_mtcars = mtcars %>%
  arrange(cyl, desc(wt))  # Arrange by cyl ascending, wt descending
print(reordered_mtcars)

# 3.	Select only the columns mpg and hp.
# Select only mpg and hp columns
selected_mtcars = mtcars[, c("mpg", "hp")]

# Print the selected data
print(selected_mtcars)

# 4.	Select the distinct values of the gear column.
# Distinct values of gear
distinct_gears = mtcars %>%
  distinct(gear)  # Get unique gear values
print(distinct_gears)

# 5.	Create a new column called “Performance” which is calculated by hp divided by wt.
# Create Performance column (hp / wt)
mtcars_performance = mtcars %>%
  mutate(Performance = hp / wt)  # Add new column with hp / wt calculation
print(mtcars_performance)

# 6.	Find the mean mpg value using dplyr.
# Mean mpg using dplyr
mean_mpg = mtcars %>%
  summarize(AvgMPG = mean(mpg))  # Calculate average mpg
print(mean_mpg)

# 7.	Use pipe operators to get the mean hp value for cars with 6 cylinders.
# Mean hp for 6 cylinders with pipe operator
mean_hp_cyl6 = mtcars %>%
  filter(cyl == 6) %>%  # Filter cars with 6 cylinders
  summarize(AvgHP = mean(hp))  # Calculate average hp
print(mean_hp_cyl6)
