## Classwork 12: Presenting data

## Code from class: recoding columns

```
ufos <- mutate(ufos, state = recode(state, tx = "Texas", ct="Connecticut"))

ufos <- mutate(ufos, state = recode(state, tx = "Texas"))

ufos <- mutate(ufos, red = str_detect(tolower(comments), "red"))

ufos <- mutate(ufos, red = recode(as.character(red), `TRUE`="red", `FALSE`="not red"))


```

1. You are given a new dataset. What are the steps you’d perform to analyze the data?
1. What are some rules for good presentation design?
1. What could be improved about this slide? ![example plot](https://github.com/juliaolivieri/COMP_162_2025/blob/f1662c8d72af0cca4725b878278ff83744762338/L14_presenting_data/example_slide.png)
1. Edit this slide: https://docs.google.com/presentation/d/19xaPgleIdoQljLajZKLnaLMqWuIQJ4mjfsvHn68XZWM/edit#slide=id.g213f6dc73df_0_59.
    * Copy the Google Slides presentation from the link
    * Edit the slide to make the point clearer and more easily digestible
    * No need to create a new plot
    * When you’re done, submit it to the google form link: https://docs.google.com/forms/d/e/1FAIpQLScwfNbcOOKAF7ojGcZcKWcPRiT1jIu52VotPfPBN6l8cBJ5lQ/viewform
1. Work on designing the slides for your project. Upload your draft.

