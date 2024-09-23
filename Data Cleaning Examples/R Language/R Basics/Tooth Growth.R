data("ToothGrowth") #Data from the ToothGrowth dataset is pulled
View(ToothGrowth) #using view function to view the ToothGrowth Dataset

#instead of presenting results in the console, the View function will open a
#new tab in the script showing the contents of the script.

#new package will be installed in order to sort and filter our given data <- install.packages("dplyr")
#the new package will be called <- library(dplyr)

filtered_tg <- filter(ToothGrowth, dose == 0.5) #data is filtered to where TG dose is 0.5. The results will be displayed in the console. 
#run as filter_tg to see results

arrange(filtered_tg, len) #columns are now sorted by length. Results will be displayed in ASC with a dose amount of 0.5 in the console. 

arrange(filter(ToothGrowth, dose == 0.5), len) #using a nested function to achieve the same results as the previous two functions. 
#the code is read from inside-out. The code will filter and then sort the data. 

#creating a pipe

#assign the filtered dataset to a variable. Pipe will automatically add the dataset to each step. No need to call the dataset repetitively. 
filtered_tg <- ToothGrowth %>% #data is called from the dataset
  filter(dose == 0.5) %>% #data is filtered
  arrange(len) #data is sorted. Last line of code does not need a pipe operator

#to run the pipe, simply type filtered_tg. The results should be the same. 

#R can also use groupby function and summerized by the average len. 
filtered_tg <- ToothGrowth %>% #data is called from the dataset
  filter(dose == 0.5) %>% #data is filtered
  group_by(supp) %>% #data is grouped by suppliments
  summarize(mean_len = mean(len, na.rm = T), .group = "drop") #data is summarized by average length. 
