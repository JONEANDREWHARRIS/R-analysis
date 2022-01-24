
ggplot(data = penguins) + 
  
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + labs(title = 'pe')
ggplot(data = diamonds) +
  
  geom_bar(mapping = aes(x = color, fill = cut)) + facet_wrap(~clarity)
x<- read.csv("C:\\Users\\andre\\Desktop\\data\\flavors_of_cacao.csv")
x
trimmed_flavors_df <- x %>%
  select(c('Rating', 'Cocoa.Percent', 'Bean.Type'))
trimmed_flavors_df
trimmed_flavors_df %>% summarize(Rating) %>% sd()
sd(x)
summarise(x)
#t least 70% cocoa and have a rating of at least 3.5 points.
print(sd(x$Rating))
v<-filter(x, Cocoa.Percent >= 70 & Rating >=3.5)
ggplot(data = v) + geom_bar(mapping = aes(x=Company.Location))
ggplot(data = v) +
  
  geom_bar(mapping = aes(x = Company.Location,fill=Rating)) +theme(axis.text.x = element_text(angle = 90))
