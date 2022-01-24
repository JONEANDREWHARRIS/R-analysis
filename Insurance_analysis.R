#BMI	Weight Status
#Below 18.5	Underweight
#18.5-24.9	Healthy
#25.0-29.9	Overweight
#30.0 and Above	Obese
data <- read.csv(file ='C:\\Users\\andre\\Desktop\\data\\insurance.csv')
view(data)
summary(data)
# Region wise
region<-data %>%ggplot(mapping = aes(x=age,y=bmi)) +
  geom_point() +
  geom_smooth() + labs(title = 'Region wise')
region

data %>%ggplot(mapping = aes(x=age,y=bmi,colour=region)) +
  geom_smooth() 
children<-data %>% ggplot(mapping = aes(x=children)) + geom_bar() + labs(title = 'Children distribution')
children

children_charges<-boxplot(formula = charges ~ children, data = data) 
children_charges



gender <- data %>% ggplot(mapping = aes(x=sex)) +geom_p() + labs(title = 'Gender Distribution')
gender


age_charges_Be<-data %>%  ggplot(mapping = aes(x=age,y=charges,colour=smoker)) +
  geom_point() +geom_smooth()
age_charges_Be



region_smoker<-data %>% ggplot(mapping = aes(x=region,fill=smoker)) +
  geom_bar() + labs(title='The_region_with_highest_smokers')
region_smoker

age_smoker<-age_smoker<-data %>% ggplot(mapping = aes(x=age,fill=smoker)) +
  geom_bar()
age_smoker
age_count<-data %>% group_by(age) %>% ggplot(mapping = aes(x=age)) +
  geom_bar() + labs(title = 'Age Count')
age_count
#groupby

age_smoker_children_gender<-data %>% ggplot(mapping = aes(x=age,fill=smoker)) +
  geom_bar() +facet_grid(children~sex) 
age_smoker_children_gender

data %>% ggplot(mapping = aes(x=age,colour =children)) + geom_bar()

data %>% ggplot(mapping = aes(x=age,fill=charges)) +
  geom_bar() +facet_wrap(smoker~children)

bmi_charges_region_smoker<-data %>% ggplot(mapping = aes(x=bmi,y=charges,colour =age)) +
  geom_point() +facet_grid(region~smoker) + geom_smooth()
bmi_charges_region_smoker


charges_children<-data %>% ggplot(mapping = aes(x=charges,y=children))+
  geom_point() + labs(title = 'Charges Relationship with children')
charges_children


smoker_charges_children<-data %>% ggplot(mapping = aes(x=charges,y=children,colour =smoker))+
  geom_point() + labs(title = 'smoker Relationship with children')
smoker_charges_children

smoker_gender<- data %>% ggplot(mapping = aes(x=sex,fill =smoker)) + geom_bar() +
  labs('Smokers by gender')
smoker_gender


data %>% ggplot(mapping = aes(x=age,y=charges,size=children,colour=bmi,shape=sex)) +geom_point() + facet_grid(region~smoker) + labs(title = "The over all chart")
age_smoker_bmi_children<- data %>% ggplot(mapping = aes(x=age,y=charges,colour=bmi))+geom_point() + facet_grid(smoker~children)
age_smoker_bmi_children
# charges distribution
data %>% ggplot(mapping = aes(x=charges)) + geom_histogram()
data %>% ggplot(mapping = aes(x=age,y=charges)) + geom_smooth()
count(data, vars = charges) %>% ggplot(mapping = aes(x=vars)) +geom_bar()
age_bmi_smoker<-data %>% ggplot(mapping = aes(x=age,y=bmi,colour=smoker))+
  geom_point() +
  geom_smooth() +
  facet_wrap(~children) # as the age increases the charges in creases
age_bmi_smoker
data %>% ggplot(mapping = aes(x=charges)) + geom_bar()
age_bmi<-data %>% ggplot(mapping = aes(x=age,y=bmi)) + geom_smooth() + labs(title = "relationship between age and BMI")
age_bmi
gender_dis<-data %>% ggplot(mapping = aes(x=age,fill=sex)) +geom_bar() + labs(title = "gender distribution by age")
gender_dis
#data %>% ggplot(mapping = aes(x =charges,colour=region)) + geom_bar()
#filter(data,region =='northeast') %>% colSums(charges)
#group_by(data$region)
#aggregate(x = data$charges,                # Specify data column
#          by = list(data$region),              # Specify group indicator
#          FUN = sum) %>% dplyr::as_tibble() + ggplot(mapping = aes(x=x,colour=Group.1)) + geom_bar()
#data %>%                                        # Specify data frame
#  group_by(region) %>%                         # Specify group indicator
#  summarise_at(vars(charges),              # Specify column
#               list(amount= sum)) %>%  ggplot(mapping = aes(y=amout,)) + geom_bar()
sum(data$age >= 20)
data %>% colSums(data,charges)
boxplot(formula = charges ~ region, data = data)