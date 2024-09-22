# PROJECT SCENARIO:
#   
# In this scenario, you will play the role of a data scientist who was recently hired by a US Weather forecast firm. 
# The company is considering the weather condition to help predict the possibility of precipitations, 
# which involves using various local climatological variables, including temperature, wind speed, humidity, dew point, 
# and pressure. The data you will be handling was collected by an NOAA weather station located at the John F. Kennedy International Airport in Queens, New York. 
# 
# Your task is to provide a high-level analysis of weather data in JFK Airport. Your stakeholders want to understand the current and historical record of 
# precipitations based on different variables. 

install.packages("tidymodels")
install.packages("rlang")
library(tidymodels)
library(rlang)
library(tidyverse)

# Task 1: Download and Unzip NOAA Weather Dataset 

url<-'https://dax-cdn.cdn.appdomain.cloud/dax-noaa-weather-data-jfk-airport/1.1.4/noaa-weather-sample-data.tar.gz' #url where the file is loaded
download.file(url, destfile = "noaa-weather-sample-data.tar.gz") #download the file
untar("noaa-weather-sample-data.tar.gz") #untar the file to get the cvs file only

# Task 2: Read dataset into the project 

weather_data <- read_csv("downloads/noaa-weather-sample-data/jfk_weather_sample.csv", #location of the csv file
                         )
head(weather_data) # display the first few rows of the dataframe
glimpse(weather_data) # different column data types

# Task 3: Remove redundant columns 

weather_dataset<-weather_data%>%
  select(HOURLYRelativeHumidity,
         HOURLYDRYBULBTEMPF,
         HOURLYPrecip,
         HOURLYWindSpeed,
         HOURLYStationPressure) # select key columns

head(weather_dataset, n=10) # show the first 10 rows of this new dataframe

# Task 4: Clean up columns  

unique(weather_dataset$HOURLYPrecip) # inspect the unique values present in the column HOURLYPrecip

# For the column HOURLYPrecip:
# replace all the T values with "0.0" 
# remove "s" from values like "0.02s" 

weather_df <- weather_dataset %>% 
  mutate(HOURLYPrecip = as.character(str_replace(str_remove_all(
    HOURLYPrecip, "[*s]"), "T", "0")))

unique(weather_df$HOURLYPrecip) # check whether unique values have been replaced or not
 
# Task 5: Convert columns to numerical types 

glimpse(weather_df) # check the types of the HOURLYPrecip column

cleaned_weather_df<-weather_df %>%
  mutate(HOURLYPrecip = as.numeric(HOURLYPrecip)) # changing the data type for character to numeric

glimpse(cleaned_weather_df) # cleaned data types for the HOURLYPrecip column
 
# Task 6: Rename data columns  

# rename the following columns as:
# 
#     'HOURLYRelativeHumidity' to 'relative_humidity'
#     'HOURLYDRYBULBTEMPF' to 'dry_bulb_temp_f'
#     'HOURLYPrecip' to 'precip'
#     'HOURLYWindSpeed' to 'wind_speed'
#     'HOURLYStationPressure' to 'station_pressure'

weather_renamed <- cleaned_weather_df%>%
  rename(relative_humidity=HOURLYRelativeHumidity,
  dry_bulb_temp_f=HOURLYDRYBULBTEMPF,
  precip=HOURLYPrecip,
  wind_speed=HOURLYWindSpeed,
  station_pressure=HOURLYStationPressure)

head(weather_renamed)

# Task 7: Exploratory Data Analysis  

# first, split the data into a training and testing set. 
# splitting a dataset is done randomly, so to have reproducible results set the seed = 1234
# use 80% of the data for training. 

set.seed(1234)

weather_data_split<-initial_split(weather_renamed, prop = 0.8)

weather_training <- training(weather_data_split)
weather_testing <- testing(weather_data_split)

# next, look at just the training set, plot histograms or box plots of the variables (relative_humidity, 
# dry_bulb_temp_f, precip, wind_speed, station_pressure) for an initial look of their distributions using 
# tidyverse's ggplot. 

# Plot histograms for the training data

# Relative Humidity
ggplot(weather_training, aes(x = relative_humidity)) +
  geom_histogram(binwidth = 6, fill = "blue", color = "black") +
  theme_minimal() +
  labs(title = "Histogram of Relative Humidity", x = "Relative Humidity", y = "Count")

# Dry Bulb Temperature
ggplot(weather_training, aes(x = dry_bulb_temp_f)) +
  geom_histogram(binwidth = 6, fill = "green", color = "black") +
  theme_minimal() +
  labs(title = "Histogram of Dry Bulb Temperature (F)", x = "Dry Bulb Temp (F)", y = "Count")

# Precipitation
ggplot(weather_training, aes(x = precip)) +
  geom_histogram(binwidth = 0.05, fill = "orange", color = "black") +
  theme_minimal() +
  labs(title = "Histogram of Precipitation", x = "Precipitation", y = "Count")

# Wind Speed
ggplot(weather_training, aes(x = wind_speed)) +
  geom_histogram(binwidth = 2, fill = "purple", color = "black") +
  theme_minimal() +
  labs(title = "Histogram of Wind Speed", x = "Wind Speed", y = "Count")

# Station Pressure
ggplot(weather_training, aes(x = station_pressure)) +
  geom_histogram(binwidth = 0.08, fill = "red", color = "black") +
  theme_minimal() +
  labs(title = "Histogram of Station Pressure", x = "Station Pressure", y = "Count")

# Task 8: Linear Regression 

# create simple linear regression models where precip is the response variable and each of 
# relative_humidity, dry_bulb_temp_f,wind_speed or station_pressure will be a predictor variable, 
# e.g. precip ~ relative_humidity, precip ~ dry_bulb_temp_f, etc. for a total of four simple models  
# additionally, visualize each simple model with a scatter plot

# Linear regression models
model_1 <- lm(precip ~ relative_humidity, data = weather_training)
model_2 <- lm(precip ~ dry_bulb_temp_f, data = weather_training)
model_3 <- lm(precip ~ wind_speed, data = weather_training)
model_4 <- lm(precip ~ station_pressure, data = weather_training)

# Precipitation vs Relative Humidity Scatter plot with regression line
ggplot(weather_training, aes(x = relative_humidity, y = precip)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Precipitation vs Relative Humidity")

# Precipitation vs Dry Bulb Temperature Scatter plot with regression line
ggplot(weather_training, aes(x = dry_bulb_temp_f, y = precip)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "green") +
  labs(title = "Precipitation vs Dry Bulb Temperature")

# Precipitation vs Wind Speed Scatter plot with regression line
ggplot(weather_training, aes(x = wind_speed, y = precip)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "purple") +
  labs(title = "Precipitation vs Wind Speed")

# Precipitation vs Station Pressure Scatter plot with regression line
ggplot(weather_training, aes(x = station_pressure, y = precip)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Precipitation vs Station Pressure")

# Task 9: Improve the Model 

# create at least two more models, each model should use at least one of the different techniques:
 
  # add more features/predictors
  # add regularization (L1, L2 or a mix)
  # add a polynomial component

# for each of the models, check the model performance using the training set and a metric like MSE, RMSE, or R-squared

# Multiple Linear Regression (adding more predictors)
model_5 <- lm(precip ~ relative_humidity + dry_bulb_temp_f + wind_speed + station_pressure, data = weather_training)

ggplot(weather_training, aes(x = relative_humidity + station_pressure + dry_bulb_temp_f, y = precip)) +
  geom_point() + stat_smooth(method = "lm", col = "red")

calculate_mse <-mean(model_5$residuals^2)
calculate_mse

summary(model_5)$r.squared


# Polynomial regression (adding polynomial component)
model_6 <- lm(precip ~ poly(relative_humidity, 2, raw = TRUE), data = weather_training)

ggplot(weather_training, aes(x = relative_humidity, y = precip)) +
  geom_point() + stat_smooth(method = "lm", formula = y ~ poly(x,15))

calculate_poly_mse <-mean(model_6$residuals^2)
calculate_poly_mse

summary(model_6)$r.squared

 
# Task 10: Find Best Model 

# compare the regression metrics of each model from section 9 to find the best model overall. To do this,

# evaluate the models on the testing set using at least one metric (like MSE, RMSE or R-squared)
# after calculating the metrics on the testing set for each model, print them out in as a table to easily compare. You can use something like:
  
  # model_names <- c("model_1", "model_2", "model_3")
  # train_error <- c("model_1_value", "model_2_value", "model_3_value")
  # test_error <- c("model_1_value", "model_2_value", "model_3_value")
  # comparison_df <- data.frame(model_names, train_error, test_error)
 
# finally, from the comparison table you create, conclude which model performed the best

model_5 <- lm(precip ~ relative_humidity + dry_bulb_temp_f + wind_speed + station_pressure, data = weather_testing)
calculate_mse <-mean(model_5$residuals^2)
calculate_mse

summary(model_5)$r.squared

model_6 <- lm(precip ~ poly(relative_humidity, 2, raw = TRUE), data = weather_testing)
calculate_poly_mse <-mean(model_6$residuals^2)
calculate_poly_mse

summary(model_6)$r.squared

model_names <- c("model_5", "model_6")
mse_training_error <- c("0.001795471", "0.00178357")
mse_testing_error <- c("0.001031364", "0.001059091")
mse_comparison_df <- data.frame(model_names, mse_training_error, mse_testing_error)

mse_comparison_df

model_names <- c("model_5", "model_6")
Rsquared_training_error <- c("0.04749902", "0.0529086")
Rsquared_testing_error <- c("0.1203415", "0.09669309")
Rsquared_comparison_df <- data.frame(model_names, Rsquared_training_error, Rsquared_testing_error)

Rsquared_comparison_df
