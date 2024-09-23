#tidyverse package will be used. Package is already installed. 

library(ggplot2) #library ggplot2 will be called.
data("diamonds") #Diamonds dataset is called.
View(diamonds) #new tab will open with the Diamonds dataset table.

#a total of 10 columns and 100 rows (53,940 entries to be exact) are returned in this dataframe.
#to make reading data easier, only the first six rows as a preview will be returned using the head function. 

head(diamonds) #quick preview of the Diamonds Dataset.
str(diamonds) #type of data contained in the columns of the Diamond Dataset.
colnames(diamonds) #returns the column names in the Diamond Dataset.

#to make a changes to this data frame, say: adding a new column.
#a new library will need to be called. 
#mutate function will need to be used. 

library(dplyr) #library dplyr is called.

#calling the mutate function, referencing the Diamonds Dataset, and adding a new column titled "carat_2" 
#with an applied calculation by copying the original carat column and multiplying the values by 100.
mutate(diamonds, carat_2=carat*100) #new column is created without making changes to the original carat column.
