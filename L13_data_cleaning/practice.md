# Lecture 13 practice

## Code from class

```
# changing date format
ufos$datetime <- as.POSIXct(ufos$datetime, format = "%m/%d/%y %H:%M")

# adding column based on  string presence
ufos <- mutate(ufos, red = str_detect(tolower(comments), "red"))

# split string based on substring
ufos$split_city <- str_split_fixed(ufos$city, "\\(", 2)[ ,2]

```

## Questions

### UFO dataset
* Link: https://drive.google.com/file/d/18IlKLY9gGOLB6D__trJskEiJZOvYqpKk/view?usp=sharing 
* Description: https://www.kaggle.com/datasets/NUFORC/ufo-sightings/data

1. Convert “date posted” to time format
2. Add a binary column marking whether "green" appears in the comment
3. Create the `split_city` column using the code above, and remove the last parenthesis from the `split_city` column

### Salary dataset

Salary dataset:
* Link: https://drive.google.com/file/d/13hbUjFdFctywrX4q3QkhJvw90kUdm1mr/view?usp=sharing
* Description: https://www.kaggle.com/datasets/thedevastator/jobs-dataset-from-glassdoor

1. Create a column with an integer of the lower-bound salary estimate
2. Create a column with an integer for a lower bound of the company size
3. Create a binary column by searching for a word or phrase in the “job description” column
4. Create a column with an integer for the lower-bound revenue of the company

 
