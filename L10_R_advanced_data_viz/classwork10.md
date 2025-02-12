# Classwork 10

## Part 1: Bike sharing exploration
1. **(CW) Download the bike sharing data: https://drive.google.com/file/d/1mXb31YZpPXnDu7PV2KkJ0A5Y_UwCiPaP/view?usp=sharing.**
2. **(CW) Create a new R Markdown file and load the data in. Directions here: Instructions here: https://github.com/juliaolivieri/COMP_162_2024/blob/main/lecture10/R_Markdown_intro.md**
3.**(CW) Load the `tidyverse` library**
4. **(CW) Create at least one of each of the following types of plots:**
  * `geom_bar()` 
  * `geom_histogram()` 
  * `geom_point()` 
5. Try to find "interesting" relationships between variables
6. Remember, you can change aesthetic properties such as color, shape, size, and fill

Column descriptions:

| Variable | Description
---|---
`season` | Either "winter", "spring", "summer", or "fall"|
`month` | Month of the year |
`year` | Year (either 2011 or 2012)|
`date` | Date|
`date_noyear` | Date with the year set to 2000 for all entries (so dates can be compared across years)|
`holiday` | TRUE if the day is a holiday, FALSE otherwise|
`weekday` | Day of the week|
`workingday` | TRUE if this is Monday - Friday, FALSE if it's Saturday-Sunday|
`weather` |Either "clear," "cloudy," or "rainy" |
`temperature_F` | Temperature in degrees Fahrenheit|
`casual` | Number of casual (non-registered) riders on the given day|
`registered` | Number of registered riders on the given day|
`count` | Number of total riders on the given day|
`humidity` | Humidity (between 0 and 100)|
`windspeed` | Wind speed in miles per hour|

## Part 2: Bikesharing practice 1

Code from class is available here: https://juliaolivieri.github.io/COMP_162_2024/lecture10.1.html 

1. **(CW) Use `mutate()` to create a new column (perhaps `count/temperature_F`) and plot the new column vs `date` using `geom_points()`**
1. **(CW) Add labels to a plot using `labs()`**
1. **(CW) Create a bar plot of `weather`, determining `fill` by `weekday` (remember to use `position = "dodge"`)**
1. **(CW) Create a bar plot of `weekday`, determining `fill` by `weather` (remember to use `position = "dodge"`)**
1. **(CW) Which of the plots from 5 and 6 is more informative?**
1. Filter your observations to only days for which the weather is `clear`, and then plot `date` vs your new column.
1. If you haven't already, try using the pipe (`%>%`) for the exercises in this section.

## Part 3: Bikesharing practice 2

Code from class is available here: https://juliaolivieri.github.io/COMP_162_2024/lecture10.2.html 

1. Create a plot of `windspeed` by `season`. Try using `geom_freqpoly()`, `geom_density()`, and `geom_histogram()`. Which visualization do you prefer?
1. Try filtering these plots to just `fall` and `spring`.
1. Create a box plot of `windspeed` by `season`. Choose another categorical variable to set `fill` to.
1. Create a `geom_line()` plot of `temperature_F` vs `date_noyear`. Add smoothing with `geom_smooth()`. Were there big temperature differences between the two years?
1. Create a plot of `humidity` by `month`. Try using `geom_freqpoly()`, `geom_density()`, and `geom_histogram()`. Which visualization do you prefer?
1. Try adding points to the plot above with `geom_jitter()`. Do you prefer the plot with or without these points?
1. Create a box plot of `humidity` by `month`. Choose a variable to set `fill` to.
1. Create a `geom_line()` plot of `temperature_F` vs `date_noyear`. Add smoothing with `geom_smooth()`. Were there big temperature differences between the two years?
1. Create a bar plot showing the frequency of each kind of species in the Star Wars data. Drop rows for which `homeworld` is NA. Only include species that appear more than once in the data. Sort the bars by frequency.
1. Try using these techniques to visualize relationships in either dataset.

