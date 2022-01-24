f <- 21 # integer
f2 <- 'ds' #str
f3 <- c(1,23,4,56,2) #vector 
f4 <- 5L #interger
f5 <- 4.1# float
f6<- 4 #numberic
f7 <- c('2', 'd',1,23,3.3,5L) # list
f7
5^2
10%%2
10!=0
library('tidyverse')
?mpg
ggplot(data =mpg) + geom_point(aes(x=hwy,y=cyl))
ggplot(data=mpg) + geom_point(aes(x=class,y=drv))
ggplot(data = mpg) +geom_point(mapping = aes(y=hwy,x=displ,alpha=class))
ggplot(data=mpg) +geom_point(mapping = aes(x=displ,y=hwy,shape=class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
ggplot(data=mpg) + geom_point(mapping = aes(x=hwy,y=displ,colour=cyl >5))
?geom_point
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy))+
  facet_wrap(~class,nrow = 2)
my_data1<- read.csv("C:\\Users\\andre\\Desktop\\data\\customeranalysis.csv")
colnames(my_data1)
df = subset(my_data1, select = -c(AcceptedCmp1,AcceptedCmp2,AcceptedCmp3,AcceptedCmp4,AcceptedCmp5) )
colnames(df)
ggplot(data=df)+geom_point(mapping = aes(x=NumWebPurchases,y=Income,colour=Education))

str(diamonds)
glimpse(df)
str(df)
ggplot(data = df, aes(x =Recency , y =Income , color = Education)) +#there is colour,shape&size
  geom_point()+
  facet_wrap(~Education) #warp means individual graph for each
#4 side rows and colums
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))+ facet_grid(drv~cyl)
#column side wise
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)#grid means all graph in one big graph combined
#columns upwards
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)
#geom_point - scatter plot
#geom_smooth - Line plots 
ggplot(data=df)+geom_smooth(mapping = aes(x=NumWebVisitsMonth,y=Education,colour=Marital_Status))+facet_wrap(~NumStorePurchases)
ggplot(data=df)+geom_smooth(mapping = aes(x=NumWebVisitsMonth,y=Education,colour=Marital_Status))
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
ggplot(data=df)+geom_point(mapping = aes(x=MntWines,y=MntMeatProducts,colour=Education))+geom_smooth(mapping =aes(x=MntWines,y=MntMeatProducts))
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()
#if both are combines it can draw a regression line like
ggplot(data=df,mapping = aes(x=MntWines,y=MntMeatProducts,colour=Education))+#if you run this both line and the points become coloured
  geom_point()+
  geom_smooth()
#we can select which attribute should be coloured
#point(Education coloured)
ggplot(data=df,mapping = aes(x=MntWines,y=MntMeatProducts))+
  geom_point(mapping = aes(colour=Education))+
  geom_smooth()
#lines (Education coloured)
ggplot(data=df,mapping = aes(x=MntWines,y=MntMeatProducts))+
  geom_point()+
  geom_smooth(mapping = aes(colour=Education))
#we can also draw line for a specific attribute element
ggplot(data=df,mapping = aes(x=MntWines,y=MntMeatProducts))+
  geom_point(mapping = aes(colour=Education))+
  geom_smooth(data =filter(df, Education=='Basi'), se= FALSE)
#this is also similar to the above ones
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)
ggplot(data = df, mapping = aes(x = MntWines, y = MntMeatProducts, color = Education)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

ggplot(data = df, mapping = aes(x = MntWines,y =MntMeatProducts)) + 
  geom_boxplot()

install.packages("vitae")
head(mpg,5)
z<-list(1,2,c("a","b"))
y<-unlist(z)
y
