library(rvest)

#Task 1: Get a COVID-19 pandemic Wiki page using HTTP request 

covid_wiki<-'https://en.wikipedia.org/wiki/COVID-19_testing'
wiki_page<-GET(covid_wiki)
wiki_page


#Task 2: Extract the COVID-19 testing data table from the wiki HTML page 

library(tidyverse)
library(dplyr)
library(httr)

covid_data_root_node<-read_html(wiki_page)
covid_data_table_node<-html_nodes(covid_data_root_node, "table")[[3]] #third table on the page
covid_dataframe<-html_table(covid_data_table_node, fill = TRUE)
print(covid_dataframe) # Print data frame

#Task 3: Pre-process and export the extracted data frame 
summary(covid_dataframe) # Summary of the processed data frame
write.csv(covid_dataframe, "covid_testing_data.csv", row.names = FALSE) # Export the data frame to a csv file
head(covid_dataframe)
View(covid_dataframe) # View dataframe

# Task 4: Get a subset of the extracted data frame  
covid_dataset<-read.csv("covid_testing_data.csv", header=TRUE, sep = ",") # Read covid_data_frame_csv from the csv file
colnames(covid_dataset) #colnames in covid_dataset
covid_data_sample<- covid_dataset[5:10, c("Country.or.region", "Confirmed.cases.")] # Get the 5th to 10th rows, with two "country" "confirmed" columns

covid_data_sample %>%
  rename(Country=Country.or.region) %>%
  rename(Cases_Confirmed=Confirmed.cases.) # Rename columns for ease

covid_data_sample_copy <- covid_data_sample %>%
  rename(Country=Country.or.region) %>%
  rename(Cases_Confirmed=Confirmed.cases.) # Save the column name changes as a new copy

print(covid_data_sample_copy) # Print the new data sample table

# Task 5: Calculate worldwide COVID testing positive ratio 

library(tidyverse) # Loading tidyverse
library(skimr) # Loading skimr
library(janitor) # Loading janitor
library(dplyr) # Loading dplyr

data_summary <- covid_dataset %>%
  summarize(
      total_confirmed_cases = sum(covid_dataset$Confirmed.cases, na.rm = TRUE), # Get the total confirmed cases worldwide
      total_tested_cases = sum(covid_dataset$Tested, na.rm = TRUE), # Get the total tested cases worldwide
      positive_ratio = total_confirmed_cases / total_tested_cases) # Get the positive ratio (confirmed / tested)

print(data_summary)

# Task 6: Get a sorted name list of countries that reported their testing data 

library(tidyverse)
library(dplyr)

colnames(covid_dataframe) # Check column names in the dataframe

class(covid_dataframe$`Country or region`) # Check the class of the 'Country or region' column

covid_dataframe$`Country or region` <- as.character(covid_dataframe$`Country or region`) # Convert 'Country or region' column to character

sorted_countries <- covid_dataframe %>%
  filter(!is.na(Tested)) %>% # Filter the countries that have non-NA testing data
  select(`Country or region`)  # Select the 'Country or region' column

countries_AtoZ <- sorted_countries %>%
  arrange(`Country or region`) # Sort the countries A to Z

countries_ZtoA <- sorted_countries %>%
  arrange(desc(`Country or region`)) # Sort the countries Z to A

print(countries_ZtoA) # Print the sorted Z to A list

# Task 7: Identify country names with a specific pattern 

# Use the regular expression 'United.+' to match country names that start with 'United'
matched_countries <- covid_dataframe %>%
  filter(grepl("^United.+", `Country or region`)) %>%
  select(`Country or region`)

# Print the matched country names
print(matched_countries)

# Task 8: Pick two countries you are interested in, and then review their testing data 

country_interest <- c("United States", "Bangladesh")
  
selected_country_data <- covid_dataframe %>%
  filter(`Country or region` %in% country_interest) %>%
  select(`Country or region`, Tested, `Confirmed /tested,%`, `Confirmed(cases)`, `Confirmed /population,%`) %>%
  rename(Country=`Country or region`) %>% # Rename columns for ease
  rename(Confirmed_percentage=`Confirmed /tested,%`) %>% # Rename columns for ease
  rename(Cases_Confirmed=`Confirmed(cases)`) %>% # Rename columns for ease
  rename(Confirmed_population=`Confirmed /population,%`)
  
print(selected_country_data)

# Task 9: Compare which one of the selected countries has a larger ratio of confirmed cases to population 

View(covid_dataframe) # Viewing column names

Bangladesh_ratio<-covid_dataframe %>%
  filter(`Country or region` == "Bangladesh") %>%
  select(`Confirmed /population,%`)

print(Bangladesh_ratio) # Print for validation

United_States_ratio<-covid_dataframe %>%
  filter(`Country or region` == "United States") %>%
  select(`Confirmed /population,%`)

print(United_States_ratio) # Print for validation

if (Bangladesh_ratio > United_States_ratio ) {
  print ("Bangladesh has a higher confirmed cases to population ratio.")
} else{
  print("United States has a higher confirmed cases to population ratio.")
}

# Task 10: Find countries with confirmed cases-to-population ratio rate less than a threshold 

countries_threshold_lessthan_one<-subset(covid_dataframe, subset = `Confirmed /population,%` < 1)

print(countries_threshold_lessthan_one)
