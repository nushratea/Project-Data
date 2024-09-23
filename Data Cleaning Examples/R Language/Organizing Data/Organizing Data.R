library(palmerpenguins) #penguins dataset
library(tidyverse) #all core functions are in this package.

#currently still using Palmer Penguins Dataset.
#viewing all column names for starters.
#changing colnames for easy of access.
#arranging and sorting Data. By default all data is in ASC. 

colnames(penguins)

penguins %>%
  rename(beak_len_mm=bill_length_mm) %>%
  rename(beak_depth_mm=bill_depth_mm) %>%
  rename(flipper_len_mm=flipper_length_mm) %>%
  arrange(beak_len_mm) #all data sorted from smallest beak length to longest.

#to save the changes without losing them. create a new copy of the current dataset. 
  
penguins_copy <- penguins %>%
  rename(beak_len_mm=bill_length_mm) %>%
  rename(beak_depth_mm=bill_depth_mm) %>%
  rename(flipper_len_mm=flipper_length_mm) %>%
  arrange(beak_len_mm) #all data sorted from smallest beak length to longest.   

#view the new dataframe and add it to the current data. 

view(penguins_copy) #a new tab will open with the newly copied data with the changed colnames and sorted order. 

#using the newly copied dataframe to perform all functions.
#grouping the penguin data by island and using the summarize function to find the mean penguin beak size.
#drop_na function will be used to skip over NA values. 

penguins_copy %>% 
  group_by(island) %>% 
  drop_na() %>%
  summarize(mean_beak_len_mm=mean(beak_len_mm)) #dataframe returned with three islands and the mean beak length of the penguins living there.

#can use the same pipe function to find the max beak length of the penguins living on the three islands. 

penguins_copy %>% 
  group_by(island) %>% 
  drop_na() %>%
  summarize(max_beak_len_mm=max(beak_len_mm)) #dataframe returned with three islands and the max beak length of the penguins living there.

#grouping the penguins by island and species. 
#can use the same pipe function to find the max,min,and mean beak length of the penguins living on the three islands. 

penguins_copy %>% 
  group_by(species, island) %>% #groupby species and island
  drop_na() %>% #dropping any missing values
  summarize(max_beak_len_mm=max(beak_len_mm), #max beak length
            min_beak_len_mm=min(beak_len_mm),  #min beak length
            mean_beak_len_mm=mean(beak_len_mm)) #mean beak length

#results can also be filtered accordingly. "==" operation will be used to be find exact values. 

penguins_copy %>%
  filter(island == "Dream") #will filter data by island and return data on penguins that live only on Dream Island. 

#will now add a new column with a calculation using the mutate function.
#will convert body_mass_g into body_mass_kg

penguins_copy %>%
  mutate(body_mass_kg=body_mass_g/1000, flipper_len_m=flipper_len_mm/1000)

