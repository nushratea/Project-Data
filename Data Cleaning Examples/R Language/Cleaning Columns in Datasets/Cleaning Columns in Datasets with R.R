#Cleaning Columns in Datasets with R

install.packages("here") #here package is installed to make referencing files easier.
library("here") #here library is now loaded.

install.packages("skimr") #skimr package is installed to make summarizing data easier.
library("skimr") #skimr library is now loaded.

install.packages("janitor") #janitor package has functions for cleaning data.
library("janitor") #janitor library is now loaded. 

library("dplyr") #dplyr library is now loaded. Package used to make data manipulation easier.

install.packages("palmerpenguins") #Palmer Penguins Dataset.
library("palmerpenguins") #Dataset loaded. 

skim_without_charts(penguins) #comprehensive summary of the Dataset. 
glimpse(penguins) #quick idea of the contents of the Dataset. 
head(penguins) #quick preview of the column names and the first few rows of the Dataset. 

penguins %>%
  select(species) #pipe created to only view the species column in the Dataset. 

#or everything column except one single column

penguins %>%
  select(-island) #will return all columns except the island column

penguins %>%
  rename(beak_length_mm=bill_length_mm) %>% #renames the bill_length_mm column to beak_length_mm.
  rename(beak_depth_mm=bill_depth_mm) #renames the bill_depth_mm column to beak_depth_mm. 

clean_names(penguins) #ensures that there are only characters, numbers, and underscores in the column names.
