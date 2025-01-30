# Lecture 6 exercises


## Part 1: Data Frames

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

# accessing by column name
iris[,1]
iris$Sepal.Length
vec <- iris$Sepal.Length

# paste command
paste(4, 3, "hello", "me")
paste("mean value:", mean(iris$Sepal.Length))

```

### Creating data frames

```
tesla_price <- c(131.49, 128.78, 127.17, 133.42, 143.75, 143.89, 144.43, 160.27, 177.9, 166.66, 173.22, 181.41, 188.27, 189.98)
apple_price <- c(135.94, 135.21, 135.27, 137.87, 141.11, 142.53, 141.86, 143.96, 145.93, 143, 144.29, 145.43, 150.82, 154.5)
date <- c("Jan17", "Jan18", "Jan19", "Jan20", "Jan23", "Jan24", "Jan25", "Jan26", "Jan27", "Jan30", "Jan31", "Feb1", "Feb2", "Feb3")
```

1. Try creating your first data frame from the vectors defined above. Use the following code:

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
3. Use the `paste()` and `sd()` functions to output "the standard deviation of age is `<correct value>`"
4. Access the column `feathers` by name using `$` and save it under a different name.
5. Try creating a data frame called `people` with columns `name`, `age`, and `birth_month`. Include entries for at least 4 people.
6. Use the `View()` command to visualize each of these data frames.
7. Use the `str()` command on each of these three data frames. What does it tell you?

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


## Part 2
### Installing packages

1. You can install an R package using the `install.packages()` function, for example `install.packages("tidyverse")`. Try running this command to make sure the package is installed.
2. You can load an R package into your session using the `library()` function, e.g. `library(tidyverse)`. Load the `tidyverse` package into your current session.
3. You can check which packages are loaded in your current session by going to the "Packages" tab in the bottom right pane of the RStudio console. Click on one of the checked packages to go to its documentation.

### Changing the working directory

1. Now that we are about to start reading and writing data in R, we need to figure out where R thinks we are in our computer's file system. To do this, run the command `getwd()` in the RStudio console to get the current working directory.
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
