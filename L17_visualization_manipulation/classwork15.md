# Classwork 14

Mapping between R and Python commands: https://github.com/juliaolivieri/COMP_162_2024/blob/main/lecture15/python_R_translation.md

Dataset used in class examples:`taxis.csv`, https://drive.google.com/file/d/1yzcou-mgYXhanO_gP69TZyEC_2S5sm0f/view?usp=sharing

## Part 1

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

1. **(CW) Create a new jupyter notebook. Import pandas, matplotlib, and seaborn. You will submit this file in your classwork assignment for today's class.**
1. Load the mining and penguins datasets from last class (https://github.com/juliaolivieri/COMP_162_2025/blob/main/L15_python_intro/classwork13.md).
1. **(CW) Display the mining dataset.**
1. **(CW) Index into the "pearl" entry using `.iloc[]`**
1. Index into the "diamond" entry using `.loc[]`
1. Use `.iloc[]` to subset to a DataFrame only containing gems, and no "rock"
1. **(CW) Use `.loc[]` to subset to a DataFrame only containing gems, and no "rock"**
1. Assign an entry to be "topaz" and an entry to be "amethyst" in such a way that you can still index to include all gems and no "rock". Use both methods to index into only the gems in the augmented DataFrame.
1. Translate this R script to a python script up through `summary(taxis)` (so, create a jupyter notebook that performs this same analysis): https://juliaolivieri.github.io/

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

## Part 2


### Exercises 

1. **(CW) Download the college majors dataset and load it using pandas: https://drive.google.com/file/d/1WK9sQdr_S7RHDUIdEBPZ88dPeOUvTY7E/view?usp=sharing (you can find documentation about this dataset here: https://data.world/fivethirtyeight/college-majors/workspace/file?filename=readme.md
)**
1. Find the number of rows and columns of the DataFrame.
1. **(CW) What is the data type of each column?**
1. Use the `value_counts()`  function to find the count of each unique value in every categorical column.
1. **(CW) Filter the data based on one categorical variable value. Compute summary statistics before and after filtering. Do any of the summary statistics change?**
1. **(CW) Make at least one plot based on this data using the `displot` function.**
1. **(CW) Brainstorm at least three plots that would help you understand this data. Which variable(s) are involved? Are they quantitative or categorical?**

## Part 3

1. **(CW) Summarize the information presented in this plot in ~1 sentence.**
<img src="https://raw.githubusercontent.com/juliaolivieri/COMP_162_2024/main/lecture16/flipper_density.png" height="400" />
1. **(CW) Summarize the information presented in this plot in ~1 sentence.**
<img src="https://raw.githubusercontent.com/juliaolivieri/COMP_162_2024/main/lecture16/example_scatter.png" height="400" />
1. **(CW) Summarize the information presented in this plot in ~1 sentence.**
<img src="https://raw.githubusercontent.com/juliaolivieri/COMP_162_2024/main/lecture16/example_box.png" height="400" />

## Part 4 

Example code from class:

```
import seaborn as sns
import matplotlib.pyplot as plt

# Create a histogram of the "total_bill" variable
sns.displot(data=tips, x="total_bill")
plt.show()

# Create a histogram of the "total_bill" variable colored by "smoker" and faceted by "time"
sns.displot(data=tips, x="total_bill",hue = "smoker", col="time", kind = "hist")
plt.show()

sns.displot(data=tips, x = "tip", hue="time", kind="kde")
plt.show()

# Create a scatterplot of "total_bill" vs "tip"
sns.relplot(
    data=tips,
    x="total_bill", y="tip"
)
plt.show()

# Create a scatterplot of "total_bill" vs "tip" colored by "smoker", faceted by "time", with marker style determined by "smoker" and size of the marker determined by "size"
sns.relplot(
    data=tips,
    x="total_bill", y="tip", col="time",
    hue="smoker", style="smoker", size="size"
)
plt.show()

sns.relplot(
    data=penguins,
    x="bill_length_mm", y="bill_depth_mm", col="sex",
    hue="species", style="island", size="body_mass_g"
)
plt.show()

# Create a barplot of "day" by "total_bill" colored by "smoker"
sns.catplot(data=tips, kind="bar", x="day", y="total_bill", hue="smoker")
plt.show()

sns.catplot(data = penguins, x = "species", y = "body_mass_g", kind = "box", hue="sex")
plt.show()
```

Documentation for functions:
* `displot`: https://seaborn.pydata.org/generated/seaborn.displot.html
* `relplot`: https://seaborn.pydata.org/generated/seaborn.relplot.html
* `catplot`: https://seaborn.pydata.org/generated/seaborn.catplot.html


1. **(CW) Make a plot of a quantitative variable using `displot()`. Set `hue` equal to a categorical variable. Try with `kind = "hist"` and `kind = "kde"`. Which provides a better representation of your data?**
1. **(CW) Make a plot of a categorical variable vs a quantitative variable using `catplot()`. Set `hue` equal to a categorical variable. Try with `kind` equal to each of the following: `"strip", "swarm", "box", "violin", "boxen", "point", "bar"`. Which provides the best representation of your data?**
1. **(CW) Create at least one of the plots you brainstormed in Classwork 1.**
1. Work on improving one of your plots so that it enhances understanding of the dataset. Save it by including `plt.savefig("my_img.png")` on the line before `plt.show()`.
1. **(CW) Submit your favorite plot: [https://forms.gle/P7ZEUeKV8JSZei4m9](https://forms.gle/P7ZEUeKV8JSZei4m9)**




