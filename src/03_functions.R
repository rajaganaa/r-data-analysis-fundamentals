# --- Functions ---

# 1.	Create a function that takes in a name as a string argument, and prints out “Hello name”.
greet = function(name) {
  cat("Hello", name, "\n")
}

greet("RAJA")

# 2.	Create a function that takes in a name as a string argument and returns a string of the form - “Hello name”.
greet_and_return = function(name) {
  return(paste("Hello", name))
}

greeting = greet_and_return("RAJA")
print(greeting)

# 3.	Create a function that will return the product of two integers.
multiply = function(x, y) {
  return(x * y)
}

product = multiply(5, 3)
print(product)

# 4.	Create a function to check the count of numbers
# 1.	Ex. x = c(1,1,1,2,2,2,3,12,3,4,5,3) output should be how many times each element is present in the vector.
count_occurrences = function(x) {

  return(table(x))
}

x = c(1, 1, 1, 2, 2, 2, 3, 12, 3, 4, 5, 3)
counts = count_occurrences(x)
print(counts)

# 5.	Create a function categorize_age that takes an age (numeric value) as input and
#  returns “Child” if the age is less than 18, “Adult” if the age is between 18 and 64, inclusive, and “Senior” if the age is 65 or above.

categorize_age = function(age) {
  if (age < 18) {
    return("Child")
  } else if (age <= 64) {
    return("Adult")
  } else {
    return("Senior")
  }
}

age_category = categorize_age(25)
print(age_category)

# 6.	Write a function average_salary_by_age_group that takes a data frame with columns Age and
# Salary and returns a new data frame with two columns, AgeGroup and AverageSalary, where AgeGroup is “Young” (ages below 30), “Middle” (ages 30 to 50),
#  and “Senior” (ages above 50), and AverageSalary is the average salary for each age group.

library(dplyr)

average_salary_by_age_group = function(data) {
  data = mutate(data, AgeGroup = case_when(
    Age < 30 ~ "Young",
    Age >= 30 & Age <= 50 ~ "Middle",
    Age > 50 ~ "Senior"
  ))

  result = data %>%
    group_by(AgeGroup) %>%
    summarise(AverageSalary = mean(Salary))

  return(result)
}
# Sample data frame
data = data.frame(Age = c(25, 35, 45, 55, 28, 42, 50),
                   Salary = c(50000, 60000, 70000, 80000, 55000, 65000, 75000))

# Call the function
result = average_salary_by_age_group(data)
print(result)

# 7.	Given a data frame df with columns Length and Width representing dimensions of rectangles,
# write a function area_rectangle that calculates the area of each rectangle.
# Then, use apply(), lapply(), or sapply() to apply this function to df to add a new column Area to the data frame.

# Define the function to calculate area of rectangle
area_rectangle = function(length, width) {
  area = length * width
  return(area)
}

# Sample data frame
df = data.frame(Length = c(5, 6, 7),
                 Width = c(2, 3, 4))

# Apply the function using sapply and add a new column 'Area'
df$Area = sapply(df$Length, function(x) area_rectangle(x, df$Width))

# Print the updated data frame
print(df)
