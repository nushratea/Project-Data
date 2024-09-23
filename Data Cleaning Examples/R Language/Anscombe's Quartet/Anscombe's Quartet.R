install.packages('Tmisc') #installing package that includes Anscombe's quartet and various other functions. 
library(Tmisc) #loading Tmisc package
data("quartet") #loading A.quartet dataset.
View(quartet) #viewing A.quartet dataset. This will open a new tab with the data contents.

#basic statistical terminology:
#mean -  sum of all values in a dataset divided by the number of values.
#standard deviation - how widely the data is spread out within a dataset.
#correlation - how strong the relationship between two variables is. 

library(tidyverse) #loading appropriate packages before using functions is a MUST!
library(dplyr)

quartet %>%
  group_by(set) %>% #grouping data by sets.
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y)) #calculating the mean of x,y; the standard deviation of x,y; the correlation of x,y.

#graphical representation of how identical the datasets are.

ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method = lm,se=FALSE) + facet_wrap(~set) #data visually is quite very different

install.packages("datasauRus") #will create the plots with the A.quartet dataset in different shapes.
library(datasauRus) #loading the package.

#creating a chart
ggplot(datasaurus_dozen, aes(x=x,y=y,colour=dataset)) + geom_point() + theme_void() + theme(legend.position = "none") + facet_wrap(~dataset,ncol=3)
