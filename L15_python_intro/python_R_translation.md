### Loading data and packages

R syntax | Python syntax | Description
-- | -- | --
`read_csv("test.csv")`| `pd.read_csv("test.csv")`| read csv called `test.csv`
`write_csv(test_df, "test.csv")` | `test_df.to_csv("test.csv",index=False)`| Write data frame `test_df` to file called `test.csv` (without index column)
 `library("testPackage")` | `import testPackage` | Load a package called `testPackage`

 ### Descriptive Statistics
 
 R syntax | Python syntax | Description
-- | -- | --
`typeof(x)` | `type(x)` | Find type of object `x`
 `head(test_df)` | `test_df.head()`| Get the first few lines of a data frame called `test_df`
 `tail(test_df)`| `test_df.tail()`| Get the last few lines of a data frame called `test_df`
 `str(test_df)` | `test_df.info()`| Find column names and data types of data frame called `test_df`
 `summary(test_df)` | `test_df.describe(include = "all")` | Generate summary statistics for data frame columns



 ### Indexing

R syntax | Python syntax | Description
-- | -- | --
`test_df[1,]` | `test_df.iloc[0,:]`| Index into the first row of data frame `test_df`
`test_df[,1]` | `test_df.iloc[:,0]`| Index into the first column of data frame `test_df`
 `test_df$col1` | `test_df["col1"]` | Access column named `"col1"` from data frame `test_df`
 

 ### Filtering and Sorting

R syntax | Python syntax | Description
-- | -- | --
 `test_df[,c("name", "age", "height")]` | `test_df[["name", "age", "height"]]` | Subset data frame `test_df` to just columns  `"name"`, `"age"`, and `"height"` 
 `filter(test_df, school == "UOP")`| `test_df[test_df["school"] == "UOP"]` | Subset data frame `test_df` to only rows for which `"school"` is equal to `"UOP"`
 `filter(test_df, age > 18)` | `test_df[test_df["age"] > 18]` | Subset data frame `test_df` to only rows for which `"age"` is greater than 18
  `table(test_df$count)`| `test_df["color"].value_counts()` | Find the count of each value for categorical variable `"color"` in data frame `test_df`
   `arrange(test_df, col1)` | `test_df.sort_values("col1")` | Sort the dataframe `test_df` by the values in column `col1`

### Plotting

R syntax | Python syntax | Description
-- | -- | --
`ggplot(test_df) + geom_hist(aes(x = col1))` | `sns.displot(data = test_df, x = "col1")` | Create a histogram based on the quantitative column `col1` in the dataframe `test_df` 
`ggplot(test_df) + geom_bar(aes(x = col1))` | `sns.displot(data = test_df, x = "col1")` | Create a bar chart based on the categorical column `col1` in the dataframe `test_df` 
