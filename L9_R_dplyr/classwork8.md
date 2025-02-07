# Lecture 9 Classwork

## Part 0: Setup
1. **(Classwork) Download the Star Wars dataset from this link: https://drive.google.com/file/d/1xdtQtyDZl6X24ZeQNXrqEXAx9BynaLfJ/view?usp=sharing**
2. **(Classwork) Open a new R script file. This is what you will turn in for today's classwork.**
3. **(Classwork) Load the tidyverse library (`library(tidyverse)`).**
4. **(Classwork) Load the Star Wars data with `read_csv(starwars.csv)`. Note that you will need to use `setwd()` to set your working directory to the location of `starwars.csv`. If you have trouble with that, you can use "File --> Import Dataset --> From Text (base)"**

## Part 1: The `arrange()` function
### Code from class
```
# sort dataframe by sleep_total
arrange(msleep, sleep_total)

# sort dataframe by sleep_total and save the result
msleep <- arrange(msleep, sleep_total)

# sort dataframe by vore and sleep_total and save the result
msleep <- arrange(msleep, vore, sleep_total)

# sort dataframe by sleep_total (in descending order) and save the result
msleep <- arrange(msleep, vore, desc(sleep_total))
```

### Exercises
1. **(CW) Sort the data frame by `hair_color` and view the result.**
2. **(CW) Sort the data frame by `birth_year` in descending order.**
3. **(CW) Sort the data frame by `hair_color` in descending order, then `birth_year` in ascending order.**
4. Sort the data frame by `hair_color`, then `birth_year` in descending order.
5. Who is the tallest Star Wars character?
6. Who is the shortest Star Wars character who has brown eyes?
7. Make a bar chart for the `homeworld` variable. Does the plot look better when `homeworld`  is on the x or y axis?
8. (Challenge) Sort the data frame by every column in the data frame, choosing ascending order for half and descending order for half. 


## Part 2: The `select()` function
### Code from class
```
# subset dataframe to only the name, brainwt, and bodywt columns
tiny_sleep <- select(msleep, name, brainwt, bodywt)

# remove the conservation and sleep_rem columns
small_sleep <- select(msleep, -conservation, -sleep_rem)
```

### Exercises
1. **(CW) Create a data frame called `selected1` with only the columns `hair_color`, `eye_color`, and `name`.** 
2. **(CW) Create a data frame called `selected2` that includes all columns except `hair_color` and `eye_color`.**
3. Create a data frame that includes only the `height`, `homeworld`, and `species` columns.
4. Select the columns name, birth year, and species.
5. Remove the gender and homeworld columns, but keep all others.
6. (Challenge) Create a data frame that includes all columns except `hair_color`, `eye_color`, `mass`, and `height`. Try doing this in two ways: by including all other columns, and by dropping these specific columns.
7. (Challenge) Try making a histogram of `birth_year`. What goes wrong?

## Part 3: The `mutate()` function
### Code from class
```
# command to add a column called bodywt_lbs that is the bodywt column times 2.20462
msleep <- mutate(msleep, bodywt_lbs = bodywt*2.20462)

# command to add a column that is brainwt/bodywt
msleep <- mutate(msleep, brain_body_ratio = brainwt/bodywt)
```

### Exercises
1. **(CW) Add a column called `mass_div_height` that is equal to the `mass`  column divided by the `height` column.**
2. **(CW) Add a column called `height_inches` that is the height column divided by 2.54.**
3. Add a column equal to the sum of the height and birth year columns.
4. Add a column called `sqrt_mass` that is equal to the square root of the `mass` column.
5. Add a column that is equal to `(mass - birth_year) + height`.
6. (Challenge) Add a column called `tall` that equals `TRUE` if the character's height is greater than 200, and `FALSE` otherwise.

## Part 4: The `filter()` function
### Code from class
```
# Command to filter the data frame to only rodents
rodents <- filter(msleep, order == "Rodentia")

# filter to only rodents and primates
rodents_primates <- filter(msleep, order %in% c("Rodentia", "Primates"))

# Command to filter the data frame to only animals that are awake between 8 and 12 hours a day
filter(msleep, (awake > 8) & (awake < 12) )

# filter to only rows with conservation status not equal to NA
filter(msleep, !is.na(conservation))
```

### Exercises
1. **(CW) Create a data frame called `from_tatooine` that only contains rows for which `homeworld` is equal to `Tatooine`.**
2. **(CW) Create a data frame called `droids` that contains only rows for which `species == "Droid"`.**
3. **(CW) Create a data frame that contains only rows for which the eye color is "blue" or "black".**
4. **(CW) Create a dataframe called `sub_starwars` that only contains rows for which `birth_year` is not NA.**
5. Try creating a histogram of `birth_year` based on `sub_starwars`.
6. Create a scatterplot of `birth_year` vs `height`.
7. Create a boxplot of `species` vs `height`.
8. Create a data frame called `tallest` that only contains rows for which `height` is greater than 190.
9. Create a data frame called `smallest` that only contains rows for which `height` is less than 170.
10. Create a data frame called `blue_eyes` that only contains characters whose `eye_color` is equal to `blue`.

## Part 5: The `group_by()` and `summarize()` functions
### Code from class
```
# finds the mean sleep_total broken down by the vore variable
grouped_data <- group_by(msleep, vore)
summarized_data <- summarize(grouped_data, average_sleep = mean(sleep_total))

# remove rows for which brainwt is NA
filter(msleep, !is.na(brainwt))

# find the median brain weight broken down by the vore variable
grouped_data %>%
  filter(!is.na(brainwt)) %>%
  summarize(average_sleep = median(brainwt))
```

| Function | Aggregation type |
| ------- | ----- |
| `sum()` | Sum |
| `n()` | Count values |
| `mean()` | Average |
| `max()` | Highest value |
| `min()` | Lowest value | 
| `sd()` | Standard deviation |

### Exercises
1. **(CW) Find the average `birth_year` by `gender` using the `sub_starwars` dataframe.**
2. **(CW) Remove rows for which `height` is NA.**
3. **(CW) Find the median height of each species. You will need to remove NA values from the height column to do this.**
4. Find the maximum `birth_year` by `homeworld`.
5. Find the sum of `mass` by `hair_color`.

## Part 6: The Pipe (`%>%`)
### Code from class
```
# sort by bodywt_lbs and select three columns
msleep %>% 
  arrange(desc(bodywt_lbs)) %>%
  select(name, bodywt, bodywt_lbs)

# groupby vore and filter out NAs
msleep %>%
  group_by(vore) %>%
  filter(!is.na(brainwt)) %>%
  summarize(average_sleep = median(brainwt))

# filter msleep and then plot
msleep %>%
  filter(order == "Primates") %>%
  select(brainwt, brain_body_ratio, sleep_total, name) %>%
  filter(!is.na(brainwt)) %>%
  ggplot(aes(brainwt, sleep_total, label=name)) +
  geom_point() +
  scale_x_continuous(trans="log2") +
  geom_text()



# Grouping by species, finding the average height of each species, and sorting by average height **without** the pipe
grouped_data <- group_by(starwars, species)
summarized_data <- summarize(grouped_data, average_height = mean(height))
summarized_data <- arrange(summarized_data, average_height)
View(summarized_data)

# Grouping by species, finding the average height of each species, and sorting by average height **with** the pipe
starwars %>%
    group_by(species)%>% 
    summarize(average_height = mean(height)) %>%
    arrange(average_height) %>%
    View()
```

### Exercises
1. **(CW) Grouping by species, finding the average height of each species, and sorting by average height **without** the pipe**
2. **(CW)  Grouping by species, finding the average height of each species, and sorting by average height **with** the pipe**
3. Try filtering the data frame to columns for which `species` is equal to `Human` and sorting by `birth_year` using `%>%`.
4. (Challenge) Try stringing the `arrange()`, `select()`, `mutate()`, `filter()`, `group_by()`, and `summarize()` functions all together using `%>%`.
5. (Challenge) Try re-writing all of the previous classwork questions using `%>%`.
