data <- read.csv(file ='C:\\Users\\andre\\Desktop\\data\\insurance.csv')
view(data)
summary(data)
data %>%ggplot(mapping = aes(x=age,y=bmi,colour=region)) +
  geom_point() +
  geom_smooth()
b<-data %>%  ggplot(mapping = aes(x=age,y=charges,colour=smoker)) +
  geom_point()
b+annotate('segment',x =17,xend = 65,y=8500,yend = 19000) + annotate('segment',x=17,xend = 65,y = 28000,yend = 40000)
v<-data %>% ggplot(mapping = aes(x=age,fill=smoker)) +
  geom_bar()
v+annotate('text',x=50,y=40,label='no much smokers are there',fontface='bold',angle=25,colour='purple',size=1.5)
v+annotate('rect',xmin = 15,xmax = 23,ymin = 39,ymax = 70,alpha=.1)
b+annotate('pointrange',x =50,y=30000,ymin = 20000,ymax = 40000,colour='red',size=2.4)
b+annotate('text',x=20:30,y=20000:60000,label =c('label1','label2'))
help(dplyr)
??dplyr
m<-c(10,9,8,7)
m[c(2,4)]
length(iris[["Petal.Length"])
x<-c(1,2,3,4,5,6,7,8,9,NA)
xx<-mean(x,ba.rm=T)
xx
