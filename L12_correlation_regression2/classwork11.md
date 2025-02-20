# Classwork 12

## Part 1: Correlation

### Code from class:

```
# calculate the Spearman correlation between the count and temperature_F columns of bike_sharing
cor.test(bike_sharing$count, bike_sharing$temperature_F, method = "spearman")

# calculate the pairwise Spearman correlations between temperature_F, humidity, windspeed, and count
cor(select(bike_sharing, temperature_F, humidity, windspeed, count), method = "spearman)
```

| Variable | Description |
| -- | -- |
| `rcc` | red blood cell count |
| `wcc` | white blood cell count |
| `hc` | hematocrit, percent |
| `hg` | hemaglobin concentration |
| `ferr` | plasma ferritins |
| `ht` | height, cm |
| `wt` | weight, kg|
| `sex` | either `f` or `m` |
| `sport` | Takes on the following values: `B_Ball`, `Field`, `Gym`, `Netball`, `Row`, `Swim`, `T_400m`, `T_Sprnt`, `Tennis`, `W_Polo`|

### Exercises
1. **(CW) Start a new R Markdown file and load the tidyverse package.**
2. **(CW) Read the following csv into a data frame called `ais` in R (same as from last class): https://drive.google.com/file/d/1WY7MHz3TnBvMPYJXq8UecPrhgAt8krAJ/view?usp=sharing**
3. **(CW) Find the pair-wise Spearman correlation for all quantitative variables using `cor()` (you will need to use `select()` to remove `sex` and `sport`).**
4. Does any pair have a higher Spearman correlation than Pearson correlation?
5. **(CW) Based on the Spearman correlation matrix, which two variables have the **highest** correlation? Use `cor.test()` to find more details about the correlation of these two variables (what is the p value?)**
6. Based on the Spearman correlation matrix, which two variables have the **lowest** correlation? Use `cor.test()` to find more details about the correlation of these two variables (what is the p value?)
7. Find the pair of variables with the lowest Spearman correlation and a p value of < 0.05.
## Part 2: Regression

### Code from class:
```
# perform a linear regression with temperature_F as the independent variable and count as the dependent variable
bike_regression <- lm(count ~ temperature_F, data = bike_sharing)

# summarize the regression output
summary(bike_regression)

ggplot(bike_sharing, aes(temperature_F, count)) +
  geom_point() +
  geom_smooth(method="lm")
```

### Exercises
1. Of height and weight, which do you presume is the independent variable?
2. **(CW) Perform a linear regression on height and weight. What is the slope of the regression line? What is the p value?**
3. **(CW) Plot two quantitative variables against each other. If you use `geom_smooth(method=lm)`, the linear regression line will be plotted. Try this out.**
4. How do these values change when you reverse the order of the variables?
5. Try performing linear regressions for the pairs of variables you found correlations for in the previous section.
