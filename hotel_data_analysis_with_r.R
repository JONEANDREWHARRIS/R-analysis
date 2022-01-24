df<-read.csv("C:\\Users\\andre\\Desktop\\data\\data_hoter.csv")
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel))
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel,fill=distribution_channel ))
glimpse(df)
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~ deposit_type)
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))
ggplot(data =df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
ggplot(data = df) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))
ggplot(data = df) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)
onlineta_city_hotels <- filter(df, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))
onlineta_city_hotels_v2
onlineta_city_hotels_v2 <- df %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
onlineta_city_hotels <- filter(df, 
                               (hotel=="City Hotel" & 
                                  df$market_segment=="Online TA"))
onlineta_city_hotels
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))
