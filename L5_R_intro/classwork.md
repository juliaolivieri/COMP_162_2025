# Classwork 5

Note: "classwork" questions are bolded. The rest of the questions are available if you have extra time. You are welcome to include more answers in your classwork submission, but you are not required to.

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

## Part 0: Introduction to R

1. **(CW) Evaluate a mathematical expression (e.g. 1 * 3 + 2) in the console**
1. **(CW) Type a range of integers into the console (e.g. -20:57) and press enter. What does this do? What do you think the numbers in brackets mean?**
1. **(CW) Copy these two expressions to the script pane. Use the “run” key to evaluate them.**
1. **(CW) Save your script as lecture5.R**
1. Check the documentation for the absolute value function by adding `?abs` to your script and running it
1. Copy the 5 lines of code at the bottom of the documentation into your script and run them to create a plot.
1. Try looking up the documentation for the following functions and trying out the example code: `rnorm()`,  `hist()`,  `max()`, `boxplot()`


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
1. **(CW) Add a comment to the beginning of your script by using #. What happens when you try to run this line of code? I recommend including comments throughout this classwork to help you remember what you did.**
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


