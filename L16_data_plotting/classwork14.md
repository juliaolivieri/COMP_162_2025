# Classwork 15

Mapping between R and Python commands: https://github.com/juliaolivieri/COMP_162_2024/blob/main/lecture15/python_R_translation.md

Dataset used in class examples:`taxis.csv`, https://drive.google.com/file/d/1yzcou-mgYXhanO_gP69TZyEC_2S5sm0f/view?usp=sharing

## Part 1

### Reading and writing data

#### Code from class

```
# read dataframe
pd.read_csv("taxis.csv")

# write dataframe
taxis.to_csv("new_taxis.csv", index = False)
```

#### Exercises

1. **(CW) Import the required packages for these exercises:**
   ```
   import matplotlib.pyplot as plt
   import pandas as pd
   import seaborn as sns
   ```
1. **(CW) Load `penguins.csv` into your notebook using `pd.read_csv()`. Save the dataframe to a variable called `penguins`. Link to dataset: https://drive.google.com/file/d/1ESxaIakPh6IpsA_x1H1798003CuqJP8r/view?usp=sharing**
2. **(CW) Load `mining.csv` into your notebook. Save this dataframe to a variable called `mining`. Link to dataset: https://drive.google.com/file/d/1Z6_ejcVUrmB39BO3GJ2bmwD8lrrX2TvW/view?usp=sharing**

### Descriptive statistics

#### Code from class

```
# find number of rows and columns
taxis.shape

# display first 10 rows
taxis.head(10)

# display last 8 rows
taxis.tail(8)

# Output summary information about column types
taxis.info()

# Output summary statistics for each column
taxis.describe(include = "all")

# Find the frequency of each value of a categorical column
taxis["payment"].value_counts()
```

#### Exercises

1. **(CW) Find the number of rows and columns of the penguins dataset.** 
1. **(CW) Display the last 6 rows of the penguins dataset.**
1. **(CW) Display the mining dataset.**
1. **(CW) Classify the variables of the penguins dataset. Use `.info()` to help you.**
1. **(CW) Find summary statistics for each column of the penguins dataset, using the `.describe(include = "all")`  method.**
1. **(CW) How many penguins of each species are in the datset?**
1. How many penguins are from each island in the dataset?


### Indexing

#### Code from class

```
# create dataframe
animals = pd.DataFrame.from_dict({"species" : ["dog", "cat", "penguin"], 
                                  "size" : [40, 10, 80], 
                                  "name" : ["Typo", "Ralph", "Pinky"], 
                                  "age" : [5, 18, 12]})

# two ways to index into the same value
animals.iloc[0,0]
animals.loc[3, "species"]

# two ways to index into the same value
animals.iloc[0:2, 1:4]
animals.loc[[3, 6],["size", "name", "age"]]
```

#### Exercises

1. **(CW) Display the mining dataset.**
1. **(CW) Index into the "pearl" entry using `.iloc[]`**
1. Index into the "diamond" entry using `.loc[]`
1. Use `.iloc[]` to subset to a DataFrame only containing gems, and no "rock"
1. **(CW) Use `.loc[]` to subset to a DataFrame only containing gems, and no "rock"**
1. Assign an entry to be "topaz" and an entry to be "amethyst" in such a way that you can still index to include all gems and no "rock". Use both methods to index into only the gems in the augmented DataFrame.
1. Translate this R script to a python script up through `summary(taxis)` (so, create a jupyter notebook that performs this same analysis): https://juliaolivieri.github.io/

## Part 2

### Filtering and sorting

#### Code from class

```
# subset to selected columns
taxis[["fare", "payment", "pickup_zone", "pickup_borough"]]

# subset to only rows for which the color is green
taxis[taxis["color"] == "green"]

# subset to only rows for which the fare is less than 5
taxis[taxis["fare"] < 5]

# sort dataframe by fare
taxis.sort_values("fare")
```

#### Exercises

1. **(CW) Sort the penguins dataframe by `bill_length_mm`.**
1. **(CW) Subset the penguins dataframe to only the categorical columns. Save the result as `cat_penguins`.**
1. **(CW) Subset the penguins dataframe to only rows for which the `bill_depth_mm` is greater than 17. Call this `bigbill_penguins`.**
1. **(CW) Write the dataframe `bigbill_penguins` to a csv.**
1. Filter to only rows for which `species` is `Adelie` or `Gentoo`.
1. Filter to only rows for which the `bill_length_mm` is less than 40 but the `bill_depth_mm` is greater than 20.
1. What is the length of the longest bill of an Adelie penguin?
1. Of the Gentoo penguins, how many are male and how many are female?
1. Continue translating this R script into a python script (so, create a jupyter notebook that performs this same analysis): https://juliaolivieri.github.io/
1. For any of these commands, do you prefer the syntax or output from R rather than Python, or vice versa?

### Plotting

#### Code from class

```
# create a histogram for fare
sns.displot(data = taxis, x = "fare")
plt.show()

# create a bar plot for pickup_borough
sns.displot(data = taxis, x = "pickup_borough")
plt.show()
```

#### Exercises
1. **(CW) Create a histogram for each quantitative variable in the penguins dataset**
1. **(CW) Create a bar chart for each categorical variable in the penguins dataset**
1. Create a histogram of `bill_length_mm` of Adelie penguins.
1. There are many different kinds of plots you can make with the `displot()` function. What happens when you use an x and y variable? 
1. Test out other displot options based on this document: https://seaborn.pydata.org/tutorial/distributions.html 
