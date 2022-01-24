library(tidyverse)
df1 <-read.csv('C:\\Users\\andre\\Desktop\\data\\natural-disasters.csv')
glimpse(df1)
view(df1)
v2 <- df1 %>% select(contains('economic')) %>% drop_na() %>% pivot_longer(cols = contains('economic'),names_to ='event',values_to = 'amount') %>%  dplyr::as_tibble()
ggplot(data=v2) +geom_line(mapping = aes(x=amount,y=event))
v <-df1 %>% select(contains("deaths"))%>% drop_na() %>%  pivot_longer(cols = contains('deaths'),names_to = 'event',values_to = 'amount')%>% dplyr::as_tibble()
v
v <-df1 %>% select(contains("deaths"))%>% drop_na() %>%  pivot_longer(cols = contains('deaths'),names_to = 'event',values_to = 'amount')%>% dplyr::as_tibble()
v
v3 <-df1 %>% select(contains("construction"))%>% drop_na() %>%  pivot_longer(cols = contains('construction'),names_to = 'event',values_to = 'amount')%>% dplyr::as_tibble()
v3
ggplot(data=v3) + geom_line(mapping = aes(y = event,x=amount,las=2))
par(mar=c(11,4,4,4))
ggplot(data=v) + geom_line(mapping = aes(y = event,x=amount,las=2))
install.packages('nycflights13')
library(dplyr)
library(ggplot2)
library(nycflights13)
data = flights %>% sample_frac(.01)
data
ggplot(data,mapping = aes(x=carrier.fill=carrier)) +
  geom_point()
ggplot(data, aes(x=distance, y= dep_delay)) +
  geom_point(color='blue')
data = flights %>% sample_frac(.005)

ggplot(data, aes(x=distance, y= dep_delay, size=air_time)) +
  geom_point()
data = flights %>% sample_frac(.01)

ggplot(data, aes(x=distance, y= dep_delay, shape = carrier)) +
  geom_point()
# You can also map aesthetics to functions of variables
df<-
ggplot(df,aes(x = mpg ^ 2, y = wt / cyl)) + geom_point()
# Or to constants
aes(x = 1, colour = "smooth")
# Aesthetic names are automatically standardised
aes(col = x)
aes(fg = x)
aes(color = x)
aes(colour = x)
# aes() is passed to either ggplot() or specific layer. Aesthetics supplied
# to ggplot() are used as defaults for every layer.
ggplot(mpg, aes(displ, hwy)) + geom_point()
ggplot(mpg) + geom_point(aes(displ, hwy))

# Tidy evaluation ----------------------------------------------------
# aes() automatically quotes all its arguments, so you need to use tidy
# evaluation to create wrappers around ggplot2 pipelines. The
# simplest case occurs when your wrapper takes dots:
scatter_by <- function(data, ...) {
  ggplot(data) + geom_point(aes(...))
}
