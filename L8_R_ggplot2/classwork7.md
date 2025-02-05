# Classwork 8

## Part 1: Brainstorm questions about `msleep`

### Code from class
```
# create a one-way frequency table of the vore column
table(msleep$vore)
```

### Exercises
1. **(CW) Load the tidyverse package with `library(tidyverse)`**
2. **(CW) Load the `msleep` dataset with `data(msleep)`**
3. **(CW) Look at `msleep` metadata with `?msleep`**
4. **(CW) Create a one-way frequency table of the conservation status in the msleep data**
5. Which conservation status appears most in our data? Which appears least?
6. Perform some exploratory data analysis on this dataset to familiarize yourself with the variables and the kinds of questions you can ask.
7. **(CW) Come up with at least three questions you could answer based on the msleep data.**
8. (Challenge) Familiarize yourself with some of the R keyboard shortcuts. Try to memorize some that seem the most helpful.

## Part 2: Transforming and plotting data

### Code from class
```
# Convert the x axis to log scale
ggplot(msleep) +
  geom_point(aes(brainwt, sleep_total)) + 
  scale_x_continuous(trans='log2') 

# Convert the y axis to log scale
ggplot(msleep) +
  geom_point(aes(sleep_total,brainwt)) + 
  scale_y_continuous(trans='log2')

# Convert both axes to log scale
ggplot(msleep) +
  geom_point(aes(sleep_total,brainwt)) + 
  scale_y_continuous(trans='log2') +
  scale_x_continuous(trans='log2')
```

### Exercises
1. **(CW) Create a scatterplot of `brainwt` vs `bodywt`.**
2. **(CW) Test out changing one or both of the axes to log scale. Which creates the most informative plot?**
3. **(CW) Create at least one more plot to answer one of your questions about the data.**
4. Try changing some of the aesthetic properties of your plots. How can you convey the most information in your plot?
5. Are there any questions that you weren't able to answer using the techniques we've learned so far?


## Part 3: 

### Code from class
```
# boxplot of vore vs sleep_total
ggplot(msleep) +
  geom_boxplot(aes(vore, sleep_total))

# add point layer to boxplot
ggplot(msleep) +
  geom_boxplot(aes(vore, sleep_total)) +
  geom_point(aes(vore, sleep_total))

# add jitter layer to boxplot
ggplot(msleep) +
  geom_boxplot(aes(vore, sleep_total)) +
  geom_point(aes(vore, sleep_total)) +
  geom_jitter(aes(vore, sleep_total))

# condensed version of the code
ggplot(msleep,aes(vore, sleep_total)) +
  geom_boxplot() +
  geom_point() +
  geom_jitter()
```

### Exercises
1. **(CW) Create a box plot of `vore` vs `brainwt`.**
2. **(CW) Try log-scaling the `brainwt` axis.**
3. **(CW) Add points to your plot.**
4. **(CW) Add jitter to your plot.**
5. What conclusions can you draw from this boxplot?
6. **(CW) Create a boxplot of `conservation` vs one of the quantitative variables.**
7. Try using the "color" aesthetic in a box plot. What happens?
8. (Challenge) Look up the ggplot2 cheatsheet. Try other geoms that are suggested for plotting a continuous and discrete variable.

## Part 4: Adding text to plots
### Code from class
```
# Add text layer to plot
ggplot(msleep, aes(brainwt, bodywt,label=name)) +
  geom_point() +
  scale_x_continuous(trans="log2") +
  scale_y_continuous(trans="log2") +
  geom_text()

# be wary of overlap of text
ggplot(msleep, aes(brainwt, bodywt,label=name)) +
  geom_point() +
  scale_x_continuous(trans="log2") +
  scale_y_continuous(trans="log2") +
  geom_text(check_overlap=T)

# adding a trend line to a plot
ggplot(msleep, aes(brainwt, bodywt)) +
  scale_x_continuous(trans='log2') +
  scale_y_continuous(trans='log2') +
  geom_point() +
  geom_smooth(method="lm")

```

### Exercises
1. **(CW) Create a scatterplot of `brainwt` vs `sleep_total`. Consider log-scaling one or both of the axes.**
2. **(CW) Add a text layer to your plot. Consider using `check_overlap=T` to make it look neater.**
3. **(CW) Add a trend line through the data**
4. What are some animals in the dataset that sleep for the smallest amount of time?
5. What are some animals in the dataset that sleep for the largest amount of time?
6. Try adding a text layer to a boxplot.
7. Synthesizing everything we have learned about plotting in ggplot2, try to create the most interesting and informative plot that you can based on the msleep data.
8. **(CW) Submit the plot that you are most proud of to this google form: https://forms.gle/LPirk3X3E4tUpoPo8. We will look over some of the submissions as a class.**
9. (Challenge) Try creating a text layer that is colored by one of the categorical variables.
10. (Challenge) Explore the additional capabilities of ggplot2 that are summarized in the cheatsheet. Are there any techniques that we didn't go over that you could see yourself using in the future?

## Part 5: Reading/writing your own data

### Code from class
```
# set working directory
setwd("~/Desktop/COMP_162/")

# read in data
msleep <- read_csv("sleep.csv")

# modify columns
msleep$brain_body_ratio <- msleep$brainwt/msleep$bodywt

# Write dataframe
write_csv(msleep, "new_sleep.csv")
```

### Exercises
1. **(CW) Download the following file to your working directory location (this is the desktop if you followed the instructions from the previous section): https://drive.google.com/file/d/1YGKp2pRhVINto56c9lFSLoxKdGD19a4C/view?usp=sharing**
1. **(CW) Read this file into a data frame in R using the following command: `tips <- read_csv("tips.csv")`**
1. View this data frame.
1. **(CW) Define a new column that is equal to the total amount paid by summing the `total_bill` and `tip` columns.** 
1. Define a new column that is equal to the percent each party tipped (the tip divided by the total bill times 100).
1. Define a new column that is equal to the price of the meal per person (`total_bill` plus `tip` divided by `size`).
1. **(CW) Write this data frame to a .csv file using the following command: `write_csv(tips,"modified_tips.csv")`.**
1. Can you find where this file is saved on your computer?
