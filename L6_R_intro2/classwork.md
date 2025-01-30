# Classwork 6

Note: "classwork" questions are bolded. You are welcome to include more answers in your classwork submission.

### Mathematical Operators in R

| Operator | Description |
| -- | -- |
| `+` | Addition |
| `-` | Subtraction|
|`*` | Multiplication |
| `/` | Division |
| `^` | Exponent |
| `%%` | Modulo |
| `%/%` | Floor division |
| `>` | Greater than | 
| `<` | Less than | 
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |
| `!=` | Not equal to | 
| `==` | Equal to |

### Mathematical functions in R

| Function | Description |
| -- | -- |
| `abs(x)` | Absolute value of x |
| `sqrt(x)` | Square root of x |
| `log(x)` | Natural log of x |
| `log10(x)` | Log base 10 of x |
| `floor(x)` | x rounded down |
| `ceiling(x)` | x rounded up |

### Variable types in R

| Variable type | Abbreviation | Example |
| -- | -- | -- |
| Character | chr | 'R', 'Hello world'|
|Numeric | num | 6.2, 4.13, -3 |
|Integer | int | 3L, -1L, 12L |
| Logical | logi | TRUE, FALSE, T, F |

## Part 1: R Basics

### Example code from lecture
```
# Assigning variables
my_variable <- 100
my_variable = 100
print(my_variable)

# Using mathematical operations and functions
x <- ((5*2) + abs(3 - 10)) %% 2
str(x)
```

### Exploring R Studio
1. **(CW) Create a new R script file, and save it as classwork6.R. You will submit this file for the "classwork 6" assignment.**
1. **(CW) Add a comment to the beginning of your script by using #. What happens when you try to run this line of code? I recommend including comments throughout this classwork to 1. help you remember what you did.**
1. Evaluate the mathematical expression (400/20) + 22 in the console. Then add it to your script file, and evaluate it there. Is there a difference? Which is preferrable?
1. Try writing -3:6 in your script and evaluating it. What is the output? What do you think the output will be if you instead input 4:93? Check to see if you were right.
1. Check the documentation of the min function by running ?min in your script. What does this function do based on the documentation?
1. At the bottom of the documentation you should see some lines of code starting with require(stats); require(graphics) and ending with  identical(n0, pmax(n0, 4))). Copy these lines of code into your script, highlight them, and press "Run." Do you see a plot appear in the "Plots" pane?
1. After running this code, some objects should appear in the "Environment" RStudio pane. This is where you will see all the objects you have defined in your session.

### Mathematical Operations in R
1. **(CW) One of the most basic uses of R is as a calculator. Write down a line of code in your script to calculate the number of seconds in a year. Include a comment above it to keep track of what you were trying to calculate.**
1. Use the %% operator to check whether the following number is even: (3.2^2) %/% 2
1. Use > to check whether sqrt(3) is greater than log(3).
1. Use < to check whether log(3) is less than log10(3).
1. R has the value of pi encoded in this variable: Try executing pi in your R script.
1. (Challenge) A penny has a diameter of 19.05 mm. A quarter has a diameter of 24.26 mm. Calculate the difference in the areas of a quarter and a penny. Remember, the area of a circle is equal to $\pi (radius)^2$, and $radius = diameter/2$.

### Assigning/printing variables
1. **(CW) Assign a variable to var1 with the result of 5 different mathematical operations/functions, e.g. floor((27 - 3) %% 5) + ceiling(-5.9)^2.**
1. Assign a variable var2 to a different result of mathematical operations/functions.
1. Assign a third variable to the result of var1 == var2.
1. Assign var4 to T.
1. Assign var5 to TRUE.
1. Check whether var4 is equal to var5 using ==.
1. Print each variable.
1. (Challenge) Redo question 7 from the section "Mathematical Operations in R", but this time assign a variable for the diameter of a quarter, a variable for the diameter of a penny, a variable for the area of a quarter, a variable for the area of a penny, and a variable for the difference in area of the two.
1. (Challenge) Define variables `X1`, `X2`, `t`, `s1`, `s2`, `n1`, and `n2`. Assign quantitative values to these variables of your choosing. Then write an expression in terms of those values to calculate $(X_1 - X_2) + t \sqrt{\frac{s_1^2}{n_1} + \frac{s_2^2}{n_2}}$.

### Variable types
1. **(CW) Check the types of five of the variables that you have defined in your script so far using the str() function, e.g. str(var1).**
1. Assign a variable var6 to 5, and a variable var7 to 5L.
1. Check the types of these two variables.
1. Check whether these two variables are equal.
1. Assign var8 to "5". What type is this variable?
1. Is var8 equal to var6?

## Part 2: Vectors

### Example Code from Lecture

```
# vectors
is.vector(5)
is.vector("hello")
c(5,10)
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
length(days)
str(days)

# Indexing
nums <- c(3,5,2,30)
nums[1]
nums[1:3]
nums[2:length(nums)]
nums[c(2,4)]

# Mathematical operations on vectors
x <- c(4, 5, 2, -1)
y <- c(-2, 4, 9, 0)
x + y
```

### Creating vectors

1. Use the `c()` function to create a vector containing the numbers 4, 10, and 15. Assign it to `var10`. An example of how to use this function is `c(3, 2, 1)`.
1. **(CW) Use the `c()` function to create a vector containing the words `apple`, `orange`, `grapefruit`, and `lime`. Save this vector as `fruits`.**
1. Try using `c()` to combine vectors `c(4, 10)` and `15`, and save the result as `var11`.  
1. What happens when you run `var10 == var11`?
1. Set `var12` equal to a range of your choice (e.g. 2:8).
1. Use the `length()` function to find the length of each of the vectors you have defined, e.g. `length(var10)`.
1. Use the `str()` function to check the type of each vector you have defined, e.g. `str(var10)`.
1. Try using `c()` to combine `var10` and `fruits`. What is the type of the resulting vector?

### Accessing vector values

Remember, R indexing starts at 1. We use brackets to index into a vector.
1.  What do you expect to be the output of `var10[2]`? Check to see if you're right.
1.  What do you expect to be the output of `fruits[3:4]`? Check to see if you're right.
1.  What do you expect to be the output of `var12[c(1, 3, 6)]`? Check to see if you're right.
1.  What do you expect to be the output of `var11[1:length(var11)]`? Check to see if you're right.
1.  **(CW) Try indexing into the vector `fruits` to get the value `lime`.**
1.  Subset `var12` to the third entry through the last entry.

### Mathematical operations on vectors

1. Find the sum of all values of `var12` using the `sum()` function, e.g. `sum(var12)`.
1. Find the sum of the squares of all values of `var12`.
1. Subtract 1 from every entry of `var10`.
1. Copy the following vectors into your script:
```
tesla_price <- c(131.49, 128.78, 127.17, 133.42, 143.75, 143.89, 144.43, 160.27, 177.9, 166.66, 173.22, 181.41, 188.27, 189.98)
apple_price <- c(135.94, 135.21, 135.27, 137.87, 141.11, 142.53, 141.86, 143.96, 145.93, 143, 144.29, 145.43, 150.82, 154.5)
date <- c("Jan17", "Jan18", "Jan19", "Jan20", "Jan23", "Jan24", "Jan25", "Jan26", "Jan27", "Jan30", "Jan31", "Feb1", "Feb2", "Feb3")
```
1. **(CW) Find the difference between `tesla_price` and `apple_price`. On which day was the price difference the largest?**
1. Find the average of the `tesla_price` vector using the `sum()` and `length()` functions. Do the same with the `apple_price` vector.
1. Find the average of each of the price vectors using the `mean()` function.
1. Find the average difference between `tesla_price`  and `apple_price`.
1. (Challenge) Find the average of the `tesla_price` vector's first four entries (corresopnding to Jan17 through Jan20), and do the same for `apple_price`.
1. (Challenge) We will not be focusing on some of the other basic functionality of R in this class, such as for loops and function definitions. However, you can look up the syntax of for loops (https://www.w3schools.com/r/r_for_loop.asp) and functions (https://www.w3schools.com/r/r_functions.asp) and test them out for yourself.
1. (Challenge) Use a loop to write a function num.odd(v) that returns how many odd numbers there are in the vector v. Then, write a function num.odd2(v) that does the same thing without using a loop.

## Part 3: Data Frames

### Example Code from Lecture

```
# Example data frame
animals <- data.frame(
  species=c("dog", "cat", "penguin"),
  age=c(7, 10, 3),
  name=c("Mittens", "Martha", "Typo")
)

# load the iris dataset
data(iris)

# View the iris dataset
View(iris)

# Find summary statistics of the iris dataset
head(iris)
str(iris)
summary(iris)

# Access the "Species" column
iris$Species

# Indexing the iris data frame
# Rows are first, columns are second
iris[2:7, c(1, 4)]
iris[c(4,6), c(2, 5)]

```

### Creating data frames

1. Try creating your first data frame from the vectors defined in the previous section. Use the following code:

```
stocks <- data.frame(
  date=date,
  tesla=tesla_price,
  apple=apple_price
)
```
2. Try defining a data frame called `animals` using the following vectors as columns:

```
species <- c("dog", "cat", "penguin")
age <- c(7, 10, 3)
name <- c("Mittens", "Martha", "Typo")
feathers <- c(FALSE, FALSE, TRUE)
```
3. Try creating a data frame called `people` with columns `name`, `age`, and `birth_month`. Include entries for at least 4 people.
4. Use the `View()` command to visualize each of these data frames.
5. Use the `str()` command on each of these three data frames. What does it tell you?

### Loading and exploring a data frame

1. To look at the data sets available for analysis in R, use the command `data()`. 
2. These datasets vary in size and quality. You can load one in using the `data()` function, e.g. `data(iris)`. Load in several data frames until you find one with at least 4 columns and at least 20 rows (you can use the `str()` function to help). 
3. Try using the `head()` command on the data frame you loaded in the previous question, e.g. `head(iris)`. What does this function do?
4. Try using the `summary()` command on this data frame. What does this tell you that the `str()` command didn't tell you?
5. Each column of a data frame is a vector. We can access each one of these vectors using the `$` symbol. For example, if we wanted to access the `Species` column of the `iris` data frame, we would use `iris$Species`. Try accessing the individual columns of your data frame and running `summary()` on them.
6. Try adding two numeric columns together and saving their value as a new column, e.g. `iris$newcol <- iris$Sepal.Length + iris$Sepal.Width`. 

### Subsetting data frames

We can access rows and columns of data frames using square brackets, similar to vectors. The format is `df[rows, columns]` where `df` is our data frame, `rows` is a vector representing the rows we want to access, and `columns` is a vector representing the columns we want to access. If we leave `rows` blank, e.g. `df[,columns]`, all columns will be selected. Similarly, if we leave `columns` blank like `df[rows,]` then all columns will be selected.

1. What do you think will be the result of `animals[1,1]`? Run the code to check.
2. What do you think will be the result of `animals[2,]`? Run the code to check.
3. What do you think will be the result of `animals[,3]`? Run the code to check.
4. Write a line of code to subset the `animals` dataframe to just the first and second columns.
5. Write a line of code to subset the `animals` dataframe to just the first and third rows.
6. Write a line of code to subset the `animals` dataframe to the second and third rows, and the first and second columns.


## Part 4
### Installing packages

1. You can install an R package using the `install.packages()` function, for example `install.packages("tidyverse")`. Try running this command to make sure the package is installed.
2. You can load an R package into your session using the `library()` function, e.g. `library(tidyverse)`. Load the `tidyverse` package into your current session.
3. You can check which packages are loaded in your current session by going to the "Packages" tab in the bottom right pane of the RStudio console. Click on one of the checked packages to go to its documentation.

### Changing the working directory

1. Now that we are about to start reading and writing data in R, we need to figure out where R thinks we are in our computer's file system. To do this, run the command `getwd()` to get the current working directory.
  * On a mac this will look something like: `/Users/jolivie1` (except with your username instead of `jolivie1`)
  * On a PC this will look something like: `C:\Users\jolivie1` (except with your username instead of `jolivie1`)
2. We will now change the working directory to the desktop. If you would prefer to work in another folder, you can set the working directory to whichever folder you would like to work in.
  * On a mac this will look something like: `setwd("/Users/jolivie1/Desktop")` (except with your username instead of `jolivie1`)
  * On a PC this will look something like: `C:\Users\jolivie1\Desktop` (except with your username instead of `jolivie1`)
3. Now running `getwd()` should show your new working directory.
 

### Reading/writing your own data

1. Load the tidyverse package using `library(tidyverse)`.
2. Download the following file to your working directory location (this is the desktop if you followed the instructions from the previous section): https://drive.google.com/file/d/1YGKp2pRhVINto56c9lFSLoxKdGD19a4C/view?usp=sharing 
3. Read this file into a data frame in R using the following command: `tips <- read_csv(“tips.csv”)`
4. View this data frame.
5. Define a new column that is equal to the total amount paid by summing the `total_bill` and `tip` columns. 
6. Define a new column that is equal to the percent each party tipped (the tip divided by the total bill times 100).
7. Define a new column that is equal to the price of the meal per person (`total_bill` plus `tip` divided by `size`).
8. Write this data frame to a .csv file using the following command: `write_csv(tips,"modified_tips.csv")`.
9. Can you find where this file is saved on your computer?
