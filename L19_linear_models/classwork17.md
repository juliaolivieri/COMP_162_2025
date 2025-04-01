# Classwork 19

## Part 1: Linear regression with multiple independent variables

### Code from class

```
# splitting the data
X_train, X_test, y_train, y_test = model_selection.train_test_split(aq[["CO", "NMHC", "NOx"]], aq[[“O3”]], test_size = 0.2, random_state=123)

# model training
reg = linear_model.LinearRegression().fit(X_train, y_train)

# model evaluation
metrics.r2_score(y_test, y_pred)
metrics.mean_squared_error(y_test, y_pred, squared=False)

reg.score(X_test, y_test)

pd.DataFrame({"column" : X_test.columns, "coefficient" : reg.coef_[0]}).sort_values("coefficient")

# model visualization
plt.scatter(y_test, y_pred)
plt.show()
```

### Exercises

1. If only the first row of annotations are showing up for the correlation plot, try updating your package versions:
```
! pip install --upgrade seaborn==0.13.2
! pip install --upgrade matplotlib==3.8.4
```
1. Fill out quiz preference: https://forms.gle/fSPNLgvUtWSrg9L78
1. **(CW) Import the required packages:**
   ```
   import matplotlib.pyplot as plt
   import pandas as pd
   import seaborn as sns
   from sklearn import linear_model, metrics, model_selection
   ```
1. **(CW) Load the Boston Housing data, available here (column descriptions below): https://drive.google.com/file/d/126E1-mxV5J4wtXwCVSF5oOyaaFUgCT9o/view?usp=share_link**
1. **(CW) Split the data into a train and test set using `model_selection.train_test_split()`. Let the output column be `MEDV` and do not include the column "expensive".**
1. **(CW) Train a linear regression model on this data.**
1. **(CW) Find the $R^2$ score of this model, as well as the RMSE.**
1. **(CW) Create a scatterplot of the actual vs predicted values.**
1. **(CW) Find the coefficients corresponding to each independent variable. Which column has the largest-magnitude coefficient? Smallest-magnitude? Does this breakdown make sense to you?**
1. What happens if you include the dependent variable in the training set?
1. Try training a model with only a subset of the independent variables. How does the model perform?


Variable | Description
--|--
`CRIM` | per capita crime rate by town
`ZN` | proportion of residential land zoned for lots over 25,000 sq.ft.
`INDUS` | proportion of non-retail business acres per town
`CHAS` | Charles River dummy variable (= 1 if tract bounds river; 0 otherwise)
`NOX` | nitric oxides concentration (parts per 10 million)
`RM` |  average number of rooms per dwelling
`AGE` | proportion of owner-occupied units built prior to 1940
`DIS` |  weighted distances to five Boston employment centres
`RAD` | index of accessibility to radial highways
`TAX` | full-value property-tax rate per $10,000
`PTRATIO` | pupil-teacher ratio by town
`LSTAT` | % lower status of the population
`MEDV` | Median value of owner-occupied homes in $1000's
`expensive` | Is equal to “no” if the cost is <= $21,000, otherwise “yes”

## Classwork 2


1. **(CW) What does overfitting refer to in the context of machine learning models?**
   1. A model that has learned the noise in the training data and performs poorly on unseen data
   1. A model that has not learned enough from the training data and performs poorly on unseen data
1. **(CW) What does underfitting refer to in the context of machine learning models?**
   1. A model that has learned the noise in the training data and performs poorly on unseen data
   1. A model that has not learned enough from the training data and performs poorly on unseen data
1. **(CW) How can you detect overfitting in a machine learning model?**
   1. The model has a high training accuracy and a low testing accuracy
   1. The model has a low training accuracy and a high testing accuracy
   1. The model has a high training accuracy and a high testing accuracy
   1. The model has a low training accuracy and a low testing accuracy
1. **(CW) How can you detect underfitting in a machine learning model?**
   1. The model has a high training accuracy and a low testing accuracy
   1. The model has a low training accuracy and a high testing accuracy
   1. The model has a high training accuracy and a high testing accuracy
   1. The model has a low training accuracy and a low testing accuracy

## Classwork 4

Code from class:
```
reg = linear_model.Ridge().fit(X_train, y_train)
reg = linear_model.Lasso().fit(X_train, y_train)

reg = linear_model.Lasso(alpha = 1).fit(X_train, y_train)
reg = linear_model.Ridge(alpha = 1).fit(X_train, y_train)
```

1. **(CW) Train a linear model on the housing data using ridge regression. Find its $R^2$ score and RMSE on the test data.**
1. Which variable has the largest-magnitude positive coefficient? Negative coefficient?
1. How do the training and test scores compare with the original linear regression model?
1. **(CW) Train a linear model on the housing data using lasso regression. Find its $R^2$ score and RMSE on the test data.**
1. Which variable has the largest-magnitude positive coefficient? Negative coefficient?
1. Which variables have coefficients equal to zero?
1. How do the training and test scores compare with the original linear regression model and the ridge regression model?
1. **(CW) Try modifying the alpha parameter for both of these models. Which model results in the highest accuracy on the test data?**
1. Create plots to visualize the relationships between `MEDV` and key prediction variables.
