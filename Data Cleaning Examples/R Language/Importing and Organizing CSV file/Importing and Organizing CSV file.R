library(tidyverse) #loading tidyverse
library(skimr) #loading skimr
library(janitor) #loading janitor

bookings_df <- read_csv("/downloads/hotel_bookings.csv") #loading Hotel Bookings from current location.

head(bookings_df) #quick preview of the loaded dataset
colnames(bookings_df) #column names returned only

#creating a short report that would describe the data briefly to stakeholder. 
#now, primarily interested in the following variables: 'hotel', 'is_canceled', and 'lead_time'. 
#creating a new data frame with just three columns, calling it `bookings_copy`.
#renaming hotel column to hotel_type

bookings_copy <- bookings_df %>% 
  select('hotel', 
         'is_canceled', 
         'lead_time') %>%
  rename(hotel_type=hotel)

head(bookings_copy)

#combining arrival_date_year, and arrival_date_month columns into a single column.

bookings_df %>% 
  select('arrival_date_year', 
         'arrival_date_month') %>%
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

#performing sum on columns children, babies, and adults.

guests_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

head(guests_df)

  
#finally, returning a summarized report on the total of reservations cancelled, and the average wait time for the reservation to be completed. 

bookings_df %>%  
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

head(bookings_copy)
