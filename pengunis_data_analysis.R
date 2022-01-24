library(tidyverse)
names<-c('jone','andrew','harris','shine','joel')
age<-c(1,2,3,4,56)
data<-data.frame(names,age)
data
str(data)
glimpse(data)
colnames(data)
mutate(data, age_afert_20=age+20)
as_tibble(data)
data(penguins)
library("palmerpenguins")
view(penguins)
summarise(penguins$species) 
penguins %>% 
  
  drop_na() %>% 
  
  group_by(species) %>% 
  
  max(flipper_length_mm)
penguins %>% 
  select(-species)
penguins %>% 
  rename(islands_new=island)
rename_with(penguins,tolower)
clean_names(penguins)
?clean_names
library(janitor)
library(repr)
install.packages("dplyr")
library(dplyr)
df<-read.csv("C:\\Users\\andre\\Desktop\\data\\data_hoter.csv")
str(df)
ggplot(data = df) +
  geom_point(mapping = aes(x = stays_in_weekend_nights , y =children ))
library(tidyverse)
library(skimr)
library(janitor)
glimpse(df)
ncol(df)
str(df$arrival_date_month)
mean(df$lead_time)
hotel_summary <- 
  df %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
hotel_summary
trimmed_df <- df %>% 
  select('hotel','is_canceled','lead_time')
trimmed_df %>% 
  select(hotel,is_canceled, lead_time) %>% 
  rename(hotel_type=hotel)
df2 <- df %>% 
  select(arrival_date_year,arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month","arrival_date_year"), sep = " ")
guests_df<-df %>% mutate(guests=adults + children + babies)
head(guests_df)
can_df <- df %>% 
  summarise(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))
head(can_df)
name <-c('jone','Andrew','harris','ichiya','jabami','yumiko','neasuko','tajiro','rengoku')
power_rate<-c(78,90,97,68,34,63,21,67,53)

regenerate<-c(54,32,45,32,45,32,76,87,56)
overall <- c(66,56,71,50,39,47,48,72,104)
df_dum<-data.frame(name,power_rate,regenerate,overall)
df_dum
df_dum %>%
  pivot_longer(!name, names_to='variabes',values_to = 'count')


new_df = read.csv("C:\\Users\\andre\\Desktop\\data\\customeranalysis.csv")
glimpse(new_df)
v <-new_df %>% 
  pivot_longer(AcceptedCmp3:AcceptedCmp2,names_to = 'campanies',values_to = 'values') %>% ggplot(mapping = aes(x= values,colour = campanies)) +
  geom_line(stat = "count") +
  geom_point(stat = "count") +
  facet_wrap(vars(campanies), ncol = 3) +
  labs(x='response',y = ' rate')
v
penguins %>% arrange(bill_depth_mm)
?arrange
