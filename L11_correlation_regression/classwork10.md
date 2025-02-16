# Classwork 11

## Part 1: Data visualization

### Code from class
```
# creating a histogram visualization
bike_sharing %>%
  ggplot(aes(temperature_F, fill=season)) +
  geom_histogram()

# creating a freqpoly visualization
bike_sharing %>%
  ggplot(aes(temperature_F, color=season)) +
  geom_freqpoly()

# creating a density visualization
bike_sharing %>%
  ggplot(aes(temperature_F, color=season)) +
  geom_density()

# sorting box plot by mean temperature
bike_sharing %>%
  ggplot(aes(reorder(month, temperature_F), temperature_F)) +
  geom_boxplot()
```

### Exercises
1. **(CW) Open an R Markdown file to use for today's classwork. You will turn in the .html version of this notebook as your submission for the assignment.**
1. **(CW) Load the bike sharing data from last class (https://github.com/juliaolivieri/COMP_162_2024/blob/main/lecture10/classwork10.md).**
1. **(CW) Create a plot of `windspeed` by `season`. Try using `geom_freqpoly()`, `geom_density()`, and `geom_histogram()`. Which visualization do you prefer?**
1. **(CW) Create a box plot of `season` vs `count`. Sort the boxes by `count`.**
1. Create a box plot of `windspeed` by `season`. Choose another categorical variable to set `fill` to.
1. Create a `geom_line()` plot of `temperature_F` vs `date_noyear`. Add smoothing with `geom_smooth()`. Were there big temperature differences between the two years?
1. Create a plot of `humidity` by `month`. Try using `geom_freqpoly()`, `geom_density()`, and `geom_histogram()`. Which visualization do you prefer?
1. Try adding points to the plot above with `geom_jitter()`. Do you prefer the plot with or without these points?
1. Create a box plot of `humidity` by `month`. Choose a variable to set `fill` to.
1. Create a `geom_line()` plot of `temperature_F` vs `date_noyear`. Add smoothing with `geom_smooth()`. Were there big temperature differences between the two years?

## Part 2: T tests

### Code from class:
```
# perform t test with count as dependent variable, workingday as independent
t.test(count ~ workingday, data = bike_sharing)

# perform t test with frac_casual as dependent variable, workingday as independent
bike_sharing <- mutate(bike_sharing, frac_casual = casual/count)
t.test(frac_casual ~ workingday, data = bike_sharing)

# perform t test with count as dependent variable, is_cold as independent
bike_sharing <- mutate(bike_sharing, is_cold = temperature_F < 50)
t.test(count ~ is_cold, data = bike_sharing)
```

### Exercises
1. **(CW) Read the following csv into a data frame called `ais` in R: https://drive.google.com/file/d/1WY7MHz3TnBvMPYJXq8UecPrhgAt8krAJ/view?usp=sharing**
1. **(CW) Perform a t-test using the ais data, with `sex` as the independent variable and `ht` as the dependent variable. Do you detect a difference in mean height by sex?**
1. **(CW) Perform a t-test using `sex` as the independent variable and `wcc` as the dependent variable. Do you detect a difference in mean wcc by sex?**
1. Test for a difference in height between rows with `Sport` equal to `B_Ball`, and those with `Sport` equal to `Row`.
1. Create a column in the data frame called `is_tall` that is true if `ht` is greater than 180. Perform a t test with `is_tall` as the independent variable and `ferr` as the dependent variable.
1. For each quantitative variable in the dataset, use a t-test to check whether there's a significant difference in means by sex using `alpha = 0.05`.

## Part 3: Correlation

### Code from class:
```
# calculate the correlation between the count and temperature_F columns of bike_sharing
cor.test(bike_sharing$count, bike_sharing$temperature_F)

# calculate the pairwise correlations between temperature_F, humidity, windspeed, and count
cor(select(bike_sharing, temperature_F, humidity, windspeed, count))

# Create every pairwise scatterplot between temperature_F, humidity, windspeed, and count
pairs(select(bike_sharing, temperature_F, humidity, windspeed, count))
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
1. **(CW) Find the pair-wise correlation for all quantitative variables using `cor()` (you will need to use `select()` to remove `sex` and `sport`).**
1. **(CW) Plot the pair-wise scatterplots for all quantitative variables using `pairs()` (you will need to use `select()` to remove `sex` and `sport`).**
1. **(CW) Based on the correlation matrix, which two variables have the **highest** correlation? Use `cor.test()` to find more details about the correlation of these two variables (what is the p value? What is the confidence interval?)**
1. Based on the correlation matrix, which two variables have the **lowest** correlation? Use `cor.test()` to find more details about the correlation of these two variables (what is the p value? What is the confidence interval?)
1. Find the pair of variables with the lowest correlation and a p value of < 0.05.
1. Try filtering by sex or sport and check how the pairwise correlations change. Do the variables have higher or lower correlations after filtering?


