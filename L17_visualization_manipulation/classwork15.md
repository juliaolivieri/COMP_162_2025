# Classwork 15



## Part 1

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

## Part 2

### Example code from class:
```
penguins = sns.load_dataset("penguins")

# creating pairwise scatterplots of all quantitative variables
sns.pairplot(data=penguins)
plt.show()

# creating pairwise scatterplots of all quantitative variables colored by species
sns.pairplot(data=penguins, hue="species")
plt.show()

# adding a regression line to a scatterplot
sns.lmplot(data=tips, x="total_bill", y="tip", col="time", hue="smoker")
plt.show()

# Create a scatterplot along with distribution plots for the variables
sns.jointplot(data=penguins, x="flipper_length_mm", y="bill_length_mm", hue="species")
plt.show()
```

Documentation for functions:
* `pairplot`: https://seaborn.pydata.org/generated/seaborn.pairplot.html
*  `lmplot`: https://seaborn.pydata.org/generated/seaborn.lmplot.html
* `jointplot`: https://seaborn.pydata.org/generated/seaborn.jointplot.html

### Exercises 

Use the "college majors" dataset from Classwork 16 for this section.

1. **(CW) Create a `pairplot` for the dataset. Which pairs of variables seem most interesting based on this plot? If you color the pair plot by a categorical variable does it reveal any additional information?**
1. **(CW) Create a plot of with a regression line between two quantitative variables you just identified. Does it look like the two variables have a linear relationship?**
1. **(CW) Create a `jointplot` between these two variables. Color by a categorical variable. What extra information does the jointplot provide?**
1. Explore different jointplot "kinds" : `"scatter", "kde", "hist", "reg"`. Which kind is most appropriate for your data?

## Part 3
The goodreads data set can be downloaded at this link: https://drive.google.com/file/d/1h8mKao45AnBW5FZkx4b34Lo2jwGjBasH/view?usp=sharing 

Each row corresponds to one book. Column definitions are the following:

Variable | Description
--|--
`Name` | The title of the book
`RatingDist1` | The number of 1-star ratings
`RatingDist2` | The number of 2-star ratings
`RatingDist3` | The number of 3-star ratings
`RatingDist4` | The number of 4-star ratings
`RatingDist5` | The number of 5-star ratings
`RatingDistTotal` | The total number of ratings
`pagesNumber` | The number of pages in the book
`PublishDay` | The day of the month the book was published
`PublishMonth` | The month the book was published (1-12)
`Publisher` | The publisher of the book
`CountsOfReview` | The number of reviews the book has received (different from ratings)
`PublishYear` | The year the book was published
`Language` | The language the book is written in
`Authors` | The author(s) of the book
`Rating` | The average rating given to this book (out of 5)

**(CW) Brainstorm questions to guide your exploratory analysis of this data.**

What might lead to an interesting discovery?
What are you curious about given the dataset columns we have access to?

## Part 4

### Code from class

```
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Stops columns from being cut off when displayed
pd.set_option('display.max_colwidth', None)

books.sort_values("Rating")
books.sort_values(["Rating", "PublishYear"])
books.sort_values(["Rating", "PublishYear"], ascending = False)
```

### Exercises

1. **(CW) What is the title of the book with the greatest number of pages?**
1. What is the title of the book with the greatest number of ratings?
1. What is the title of the book with the greatest number of reviews?
1. **(CW) Sort the data by “PublishYear”, “PublishDay”, and “RatingDistTotal” in descending order.**


## Part 5

### Code from class

```
# log-scale axis
sns.relplot(data = books, x = "RatingDistTotal", y = "CountsOfReview")
plt.xscale("log")
plt.yscale("log")
plt.show()

# filter quantitative
books = books[(books["PublishDay"] > 10) & (books["PublishDay"] < 20)]

# filter categorical
books = books[(books["Publisher"] == "HarperCollins") | (books["Publisher"] == "Penguin Books") | (books["Publisher"] == "Simon  Schuster")]
books = books[books["Publisher"].isin(["Harper Collins", "Penguin Books", "Simon  Schuster"])]
```

### Exercises

1. **(CW) Filter your dataframe to remove outliers from the “PublishYear” variable, and save the dataframe.**
1. **(CW) Filter your dataframe based on the “Language” variable: Choose only three languages to include.**
1. Filter books to only rows for which “pagesNumber” is greater than 0 and less than 20,000 and save as `books`.
1. Are there other columns it would make sense to filter on to clean up the data? Perform more filtering as you see fit.
1. **(CW)) Create a scatterplot with at least one of the axes log-scaled.**

## Part 6

### Code from class

```
books["RatingsPlusReviews"] = books["RatingDistTotal"] + books["CountsOfReviews"]	
books["fracRated1"] = books["RatingDist1"]/books["RatingDistTotal"]
books["Rated5MinusRated1"] = books["RatingDist5"] - books["RatingDist1"]
books["Penguin"] = ((books["Publisher"] == "Penguin Books") | (books["Publisher"] == "Penguin Classics"))
```

### Exercises


1. **(CW) Assign a column called ”FracRated5” that’s the fraction of the total ratings (”RatingDistTotal”) that are equal to 5 (”RatingDist5”)**
1. What happens when you add two columns containing strings? Try adding the ”Authors” and ”Name” columns.
1. **(CW) Create a new column of your choosing.**
1. Assign a column called ”OneFiveRating” that’s equal to the average rating for the book if only 1-star and 5-star ratings are considered

## Part 7

### Code from class

```
books["Length"] = "tiny"
books.loc[books["pagesNumber"] > 20, "Length"] = "short"
books.loc[books["pagesNumber"] > 150, "Length"] = "medium"
books.loc[books["pagesNumber"] > 400, "Length"] = "long"
```

### Exercises

1. **(CW) Assign a new variable called “Season” based on the “PublishMonth” column. Let “Season”  be defined as follows:**
      * “Season” equals “Winter”  if “PublishMonth”  equals 1, 2, or 3
      * “Season”  equals “Spring”  if “PublishMonth” equals 4, 5, or 6
      * “Season”  equals “Summer” if “PublishMonth” equals 7, 8, or 9
      * “Season”  equals “Fall”  if “PublishMonth” equals 10, 11, or 12
1.  Define the following columns:
      * “TimePeriod” based on the “PublishYear” column, with at least 4 categories.
      * “Popularity” based on the “RatingDistTotal” column, with at least 3 categories.

## Part 8

Now that we have learned more data manipulation techniques in Python, we can apply them to answer our questions from the beginning. Work on addressing as many of the questions that you brainstormed as you can. The goal is to create an expansive analysis encompassing interesting findings from the dataset.

**(CW) Create at least one plot or analysis to answer a question you brainstormed above.**

