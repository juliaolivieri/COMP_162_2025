library(tidyverse)

setwd("~/Desktop/COMP_162/datasets/")

bike_sharing <- read_csv("bikesharing.csv")

ggplot(bike_sharing, 
       aes(weather)) +
  geom_bar(fill="dodgerblue")

ggplot(bike_sharing, 
       aes(temperature_F)) +
  geom_histogram(fill="dodgerblue")

ggplot(bike_sharing,
       aes(temperature_F, windspeed)) +
  geom_point(color="dodgerblue")

bike_sharing %>%
  filter(weekday == "Monday") %>%
  ggplot( 
       aes(weather)) +
  geom_bar(fill="dodgerblue")

# vignette 1

bike_sharing %>%
  ggplot(aes(humidity, count)) +
  geom_point(color="dodgerblue")

bike_sharing %>%
  ggplot(aes(windspeed, count)) +
  geom_point(color="dodgerblue")

bike_sharing %>%
  ggplot(aes(temperature_F, count)) +
  geom_point(color="dodgerblue")

bike_sharing %>%
  ggplot(aes(temperature_F, count,
             color = season)) +
  geom_point()

bike_sharing %>%
  ggplot(aes(temperature_F, count,
             color = season, 
             shape = weather)) +
  geom_point()

bike_sharing %>%
  ggplot(aes(temperature_F, count,
             color = weather, 
             shape = season)) +
  geom_point()

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  ggplot(aes(temperature_F, count,
             color = season, 
             shape = weather,
             size = frac_casual)) +
  geom_point()

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  ggplot(aes(temperature_F, count,
             color = frac_casual)) +
  geom_point()

bike_sharing %>%
  ggplot(aes(temperature_F, count,
             color = season, 
             shape = weather)) +
  geom_point() +
  labs(title = "Effect of weather conditions on number of riders",
       x = "temperature (F)", y = "number of riders")
ggsave("vignette1.png")

bike_sharing %>%
  filter(season == "summer") %>%
  arrange(count) %>%
  head()


# vignette 2

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  ggplot(aes(date, frac_casual)) +
  geom_point(color="dodgerblue")

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  filter(year == 2011) %>%
  ggplot(aes(date, frac_casual)) +
  geom_point(color="dodgerblue")

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  filter(year == 2011) %>%
  ggplot(aes(date, frac_casual,color=season)) +
  geom_point()

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  filter(year == 2011) %>%
  ggplot(aes(date, frac_casual,color=workingday)) +
  geom_point()

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  filter(year == 2011) %>%
  ggplot(aes(date, frac_casual,color=workingday,
             size = holiday)) +
  geom_point()

bike_sharing %>%
  mutate(frac_casual = casual/count) %>%
  filter(year == 2011) %>%
  ggplot(aes(date, frac_casual,color=workingday)) +
  geom_point() + 
  labs(title="Fraction of casual riders by date in 2011",y="fraction of casual riders")

# vignette 3

bike_sharing %>%
  ggplot(aes(weather)) +
  geom_bar(fill="dodgerblue")

bike_sharing %>%
  ggplot(aes(weather,fill=season)) +
  geom_bar()

bike_sharing %>%
  ggplot(aes(weather,fill=season)) +
  geom_bar() +
  facet_wrap(~season)

bike_sharing %>%
  ggplot(aes(weather,fill=season)) +
  geom_bar(position="dodge") +
  labs(title="Weather by season")

# classwork 1

bike_sharing %>%
  mutate(new_col = count/temperature_F) %>%
  ggplot(aes(date,new_col)) +
  geom_point()

bike_sharing %>%
  ggplot(aes(weather,fill=weekday)) +
  geom_bar(position="dodge")

# vignette 4

bike_sharing %>%
  ggplot(aes(temperature_F)) +
  geom_histogram(fill="dodgerblue")

bike_sharing %>%
  ggplot(aes(temperature_F,fill=season)) +
  geom_histogram()

bike_sharing %>%
  ggplot(aes(temperature_F,fill=season)) +
  geom_histogram() +
  facet_wrap(~season)

bike_sharing %>%
  ggplot(aes(temperature_F,fill=season)) +
  geom_histogram() +
  geom_freqpoly() +
  facet_wrap(~season)

bike_sharing %>%
  ggplot(aes(temperature_F,color=season)) +
  geom_freqpoly() 

bike_sharing %>%
  filter(season == "winter" | season == "summer") %>%
  ggplot(aes(temperature_F,color=season)) +
  geom_freqpoly() 

bike_sharing %>%
  filter(season == "winter" | season == "summer") %>%
  ggplot(aes(temperature_F,color=season)) +
  geom_density() 

bike_sharing %>%
  ggplot(aes(temperature_F,color=season)) +
  geom_density() +
  labs(title="Temperature by season", x = "temperature (F)")

# vignette 5
bike_sharing %>%
  ggplot(aes(season, humidity)) +
  geom_point(color="dodgerblue")

# vignette 5
bike_sharing %>%
  ggplot(aes(season, humidity)) +
  geom_point(color="dodgerblue")

bike_sharing %>%
  ggplot(aes(season, humidity)) +
  geom_jitter(color="dodgerblue")

bike_sharing %>%
  ggplot(aes(season, humidity)) +
  geom_boxplot()

bike_sharing %>%
  ggplot(aes(season, humidity)) +
  geom_jitter() +
  geom_boxplot() 

bike_sharing %>%
  ggplot(aes(season, humidity, fill=weather)) +
  geom_boxplot()

# vignette 6

bike_sharing %>%
  ggplot(aes(date,count)) +
  geom_point()

bike_sharing %>%
  ggplot(aes(date_noyear,count)) +
  geom_point()

bike_sharing %>%
  ggplot(aes(date_noyear,count,color=year)) +
  geom_point()

bike_sharing %>%
  ggplot(aes(date_noyear,count,color=year)) +
  geom_line()

bike_sharing %>%
  ggplot(aes(date_noyear,count,color=year,group=year)) +
  geom_line()

bike_sharing %>%
  ggplot(aes(date_noyear,count,color=year,group=year)) +
  geom_line() +
  geom_point()

bike_sharing %>%
  ggplot(aes(date_noyear,count,color=year,group=year)) +
  geom_line() +
  geom_smooth()

bike_sharing %>%
  ggplot(aes(date_noyear,count,color=year,group=year)) +
  geom_line() +
  geom_smooth() +
  labs(title="number of riders by date",x="date",y="number of riders")

#vignette 7

View(starwars)

starwars %>%
  ggplot(aes(homeworld)) +
  geom_bar(fill="dodgerblue")

starwars %>%
  group_by(homeworld) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(homeworld,count)) +
  geom_bar(stat="identity",fill="dodgerblue")

starwars %>%
  group_by(homeworld) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(count,homeworld)) +
  geom_bar(stat="identity",fill="dodgerblue")


starwars %>%
  drop_na(homeworld) %>%
  group_by(homeworld) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(count,homeworld)) +
  geom_bar(stat="identity",fill="dodgerblue")

starwars %>%
  drop_na(homeworld) %>%
  group_by(homeworld) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(count,reorder(homeworld,count))) +
  geom_bar(stat="identity",fill="dodgerblue") +
  labs(title="Frequency of homeworld in Star Wars",y="homeworld")

starwars %>%
  drop_na(homeworld) %>%
  group_by(homeworld) %>%
  summarize(count = n())

# starwars classwork

starwars %>%
  ggplot(aes(species)) +
  geom_bar()

starwars %>%
  group_by(species) %>%
  summarize(count = n()) %>%
  ggplot(aes(species,count)) +
  geom_bar(stat="identity")

starwars %>%
  group_by(species) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(species,count)) +
  geom_bar(stat="identity",fill="dodgerblue")

starwars %>%
  drop_na(homeworld) %>%
  drop_na(species) %>%
  group_by(species) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(count,species)) +
  geom_bar(stat="identity",fill="dodgerblue")

starwars %>%
  drop_na(homeworld) %>%
  drop_na(species) %>%
  group_by(species) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(count,reorder(species,count))) +
  geom_bar(stat="identity",fill="dodgerblue")



starwars %>%
  drop_na(homeworld) %>%
  group_by(species) %>%
  summarize(count = n()) %>%
  filter(count > 1) %>%
  ggplot(aes(count,reorder(species,count))) +
  geom_bar(fill="dodgerblue",stat="identity")
  







