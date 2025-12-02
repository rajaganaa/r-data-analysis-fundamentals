# --- Basics: Vectors, Lists, Logic ---

# 1.	Create a vector called stock.prices with the following data points: 23,27,23,21,34.

# Stock prices
stock.prices = c(23, 27, 23, 21, 34)
stock.prices

# Logical vector for even numbers
even.numbers = numbers %% 2 == 0  # Modulo operator for even check

# 2.	Create a numeric vector containing the numbers 1 to 10.

# Numbers 1 to 10
numbers = 1:10
numbers

# 3.	Calculate the sum of these numbers.
sum(numbers)

# 4.	Create a logical vector indicating which numbers are even.
# Logical vector for even numbers
even.numbers = numbers %% 2 == 0  # Modulo operator for even check
even.numbers

# 5.	Use the plot() function to create a scatter plot of the mtcars dataset, plotting mpg (miles per gallon) against hp (horsepower).
library(ggplot2)  # Using ggplot2 for better customization

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  labs(title = "MPG vs. Horsepower", x = "Horsepower", y = "Miles per Gallon")

# 6.	Given a vector a = c("a", "b", "c", "d", "e"), extract the 2nd and 4th elements.
a = c("a", "b", "c", "d", "e")
second_and_fourth = a[c(2, 4)]  # Output: c("b", "d")
second_and_fourth

# 7.	From the mtcars dataset, select the rows where cyl (cylinders) is 4 and only the columns mpg, hp, and wt.
mtcars_sub = mtcars[mtcars$cyl == 4, c("mpg", "hp", "wt")]
mtcars_sub

# 8.	Create a list my_list that contains three elements: a numeric vector (1, 2, 3), a character vector (“a”, “b”, “c”), and a matrix with 2 rows and 2 columns.
my_list = list(
  numbers = 1:3,
  letters = c("a", "b", "c"),
  matrix = matrix(1:4, nrow = 2)
)
my_list

# 9.	Add a new element to my_list that is a logical vector (TRUE, FALSE).
my_list[[length(my_list) + 1]] = c(TRUE, FALSE)
my_list

# 10.	Create character vector words with the elements “R”, “is”, “fun”.

words = c("R", "is", "fun")
words

# 11.	Use a function to concatenate these words into a single string: “R is fun”.
sentence = paste(words, collapse = " ")
sentence

# 12.	Replace “fun” with “awesome” in the concatenated string.
new_sentence = gsub("fun", "awesome", sentence)
new_sentence

# 13.	From a numeric vector to a character vector: v_num = c(1, 2, 3)
v_num=c(1,2,3)
char=as.character(v_num)
char
typeof(char)

# 14.	From a character vector to a factor: v_char = c("low", "medium", "high")
v_char = c("low", "medium", "high")
fact=factor(v_char)
fact
typeof(fact)

# 15.	From a factor to a numeric vector, considering the factor levels as numeric values:
f = factor(c(1, 2, 3))
numer=as.numeric(f)
numer
typeof(numer)

# 16.	colors = c(“red”, “blue”, “green”, “blue”, “red”, “green”, “green”, “red”)
# 1.	Convert colors into a factor, f_colors.
# 2.	Print the levels of f_colors.
# 3.	How would you reorder the levels of f_colors so that “green” comes first?

colors = c("red", "blue", "green", "blue", "red", "green", "green", "red")
f_colors = factor(colors)

# Levels
levels(f_colors)

# Reordering levels
f_colors = factor(colors, levels = c("green", "red", "blue"))
levels(f_colors)

# 17.	my_list = list(name = “Alice”, age = 30, hobbies = c(“Cycling”, “Art”, “Music”)) my_df = data.frame(Name = c(“Alice”, “Bob”), Age = c(25, 30))
# 1.	Access and print the hobbies element from my_list.
# 2.	Add a new column Occupation to my_df with values “Doctor” for Alice and “Engineer” for Bob.

my_list = list(name = 'Alice', age = 30, hobbies = c('Cycling', 'Art', 'Music'))
my_df = data.frame(Name = c('Alice', 'Bob'), Age = c(25, 30))

# Access hobbies
cat("Hobbies:", my_list$hobbies, "\n")

# Add Occupation column
my_df$Occupation = c("Doctor", "Engineer")
my_df$Occupation
my_df

# --- Matrix Operations ---

# Define matrices B, C, and A
B = matrix(c(1, 2, 3, 4), nrow = 2)
C = matrix(c(2, 0, 1, 2), nrow = 2)
A = matrix(1:9, nrow = 3)

# 1. Sum of B and C
sum_B_C = B + C
print("1. Sum of B and C:")
print(sum_B_C)

# 2. Product of B and C (matrix multiplication)
product_B_C = B %*% C
print("2. Product of B and C (matrix multiplication):")
print(product_B_C)

# 3. Sum of each row in A
sum_each_row_A = rowSums(A)
print("3. Sum of each row in A:")
print(sum_each_row_A)

# 4. Mean value of each column in A
mean_each_column_A = colMeans(A)
print("4. Mean value of each column in A:")
print(mean_each_column_A)

# 5. Set all the elements to 0 if they are divisible by 2
A[A %% 2 == 0] <- 0
print("5. Matrix A with elements set to 0 if divisible by 2:")
print(A)

# --- Control Flow Statements ---

# 1.	Write a script that will
#  print “Even Number” if the variable x is an even number, otherwise print “Not Even”.

# Define the variable x
x = 10

# Check if x is an even number
if (x %% 2 == 0) {
  print("Even Number")
} else {
  print("Not Even")
}

# 2.	Write a script that will print ‘Is a Matrix’ if the variable x is a matrix, otherwise print “Not a Matrix”.
#  Hint: You may want to check out help(is.matrix)


# Define the variable x
x = matrix(1:9, nrow = 3)

# Check if x is a matrix
if (is.matrix(x)) {
  print("Is a Matrix")
} else {
  print("Not a Matrix")
}

# 3.	Create a script that given a numeric vector x x=c(3,7,1),
#  will print out the elements in order from high to low i.e (1,3,7).
# You must use if,else if, and else statements for your logic.


# Define the numeric vector x
x = c(3, 7, 1)

# Sort the elements of x in descending order
x_sorted = sort(x, decreasing = TRUE)

# Print the sorted elements
print(x_sorted)

# 4.	Write a script that uses if,else if, and else statements to print
#  the max element in a numeric vector with 3 elements.
# 1.	Ex. x = c(3,7,1) 7 should be the output

# Define the numeric vector x
x = c(3, 7, 1)

# Find the maximum element using if-else statements
if (x[1] > x[2] && x[1] > x[3]) {
  print(x[1])
} else if (x[2] > x[1] && x[2] > x[3]) {
  print(x[2])
} else {
  print(x[3])
}
