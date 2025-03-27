# Classwork 16

## Part 1

### Adding columns

### Code from class

```
books["RatingsPlusReviews"] = books["RatingDistTotal"] + books["CountsOfReviews"]	
books["fracRated1"] = books["RatingDist1"]/books["RatingDistTotal"]
books["Rated5MinusRated1"] = books["RatingDist5"] - books["RatingDist1"]
books["Penguin"] = ((books["Publisher"] == "Penguin Books") | (books["Publisher"] == "Penguin Classics"))
```

### Exercises

1. Load the "books" data from last class.
1. **(CW) Assign a column called ”FracRated5” that’s the fraction of the total ratings (”RatingDistTotal”) that are equal to 5 (”RatingDist5”)**
1. What happens when you add two columns containing strings? Try adding the ”Authors” and ”Name” columns.
1. **(CW) Create a new column of your choosing.**
1. Assign a column called ”OneFiveRating” that’s equal to the average rating for the book if only 1-star and 5-star ratings are considered

### Quantitative to categorical

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

## Part 2: Correlation

### Code from Class

```
aq.corr()

aq.corr(method = "pearson")
aq.corr(method = "spearman")

sns.heatmap(aq.corr(),annot=True)
plt.show()
```

### Exercises

1. **(CW) Load the SAT scores dataset into your notebook. Data available here: [https://drive.google.com/file/d/1zxa8ekinJdsucWvtrVmpxazYM8oSo0DA/view?usp=sharing](https://drive.google.com/file/d/10dzC5BrHOmgrtzJ6PWPgGH08cg-vg4B7/view?usp=sharing)**
1. **(CW) Calculate the Pearson correlation matrix.**
1. **(CW) Plot the Pearson correlation matrix.**
1. **(CW) Which pair of variables have the largest-magnitude positive correlation?**
1. **(CW) Which pair of variables have the largest-magnitude negative correlation?**
1. Calculate and plot the Spearman  correlation matrix.
1. What is your interpretation of this correlation plot?
   
<img src="https://raw.githubusercontent.com/juliaolivieri/COMP_162_2024/main/lecture18/corr.png" height="400" />

## Part 3: Introduction to Machine Learning

### Exercises

1. **(CW) What is your current understanding of the term “machine learning”?**
1. **(CW) If a machine learning task involves predicting the percentage of a student's score in an exam, which type of task is it?**
   * Regression
   * Classification
1. **(CW) If a machine learning task involves predicting whether a customer will make a purchase or not, which type of task is it?**
   * Regression
   * Classification
1. **(CW) If a machine learning task involves predicting a person's age based on their social media usage, given a dataset with ages and corresponding social media usage data, which type of learning is it?**
   * Supervised learning
   * Unsupervised learning
1. **(CW) If a machine learning task involves grouping similar news articles together without prior knowledge of their categories, which type of learning is it?**
   * Supervised learning
   * Unsupervised learning
  
## Part 4: Linear Regression

### Code from class

```
from sklearn import linear_model, model_selection, metrics

reg = linear_model.LinearRegression().fit(salaries[["YearsExperience"]],salaries[["Salary"]])

print(reg.coef_)
print(reg.intercept_)

X_train, X_test, y_train, y_test = model_selection.train_test_split(salaries[["YearsExperience"]], salaries[["Salary"]], test_size = 0.2, random_state=1234)
   
reg = LinearRegression().fit(X_train, y_train)
y_pred = reg.predict(X_test)
   
metrics.r2_score(y_test, y_pred)
metrics.mean_squared_error(y_test, y_pred)

reg.score(X_test, y_test)
```

### Exercises
1. **(CW) Import all necessary sklearn modules:**
   ```
   from sklearn import linear_model, model_selection, metrics
   ```
1. **(CW) For the "scores" dataset, "Average Score (SAT Writing)" will be the dependent variable. Choose a column to use as the predictor variable (independent variable).**
1. **(CW) Split the data into a training and testing set (what fraction of the data will you use for testing?).**
1. **(CW) Train a linear model using the training data.**
1. “Predict” the dependent variable based on the independent variable using the training set. Use `metrics.r2_score()` and  `metrics.mean_squared_error()` to evaluate the prediction.
1. **(CW) “Predict” the dependent variable based on the independent variable using the test set. Use `metrics.r2_score()` and  `metrics.mean_squared_error()` to evaluate the prediction.**
1. Try a few different random seeds for the train/test split. How different are your answers?
1. Try training your model based on all of the data rows, rather than splitting it into train/test. How do the metrics compare?
1. **(CW) Try different possible independent variables for the model. Which variable provides the most accurate predictions?**

## Part 5: Linear regression with multiple independent variables

### Code from class

```
X_train, X_test, y_train, y_test = model_selection.train_test_split(aq[["CO", "NMHC", "NOx"]], aq[[“O3”]], test_size = 0.2, random_state=123)

reg = linear_model.LinearRegression().fit(X_train, y_train)

reg.score(X_test, y_test)

pd.DataFrame({"column" : X_test.columns, "coefficient" : reg.coef_}).sort_values("coefficient")
```

### Exercises

1. Try training a linear regression model on all of the quantitative variables from the SAT scores dataset (remember to split into train and test set).
1. Find the score of this model. How does it compare to the score of models trained on a single variable?
1. Find the coefficients corresponding to each column. Which column has the largest-magnitude coefficient? Smallest-magnitude? Does this breakdown make sense to you?
1. What happens if you include the dependent variable in the training set?
1. Try training a model with only a subset of the independent variables. How does the model perform?
1. Download the apple quality dataset: https://drive.google.com/file/d/1MJGf7XJSdrGCy6hKDtvS9rt5HvlevMK6/view?usp=sharing. Decide on a column to use as the dependent variable. Try predicting the dependent variable based on the independent variables. Which independent variables are most useful for predicting the dependent variable?

