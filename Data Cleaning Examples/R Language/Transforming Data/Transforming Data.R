library(dplyr)
library(tidyr)

#created a simple dataframe with some basic employee information.

id <- c(1:10) #first column

name <- c("John Mendes", 
          "Rob Stewart", 
          "Rachel Abrahamson", 
          "Christy Hickman", 
          "Johnson Harper", 
          "Candace Miller", 
          "Carlson Landy", 
          "Pansy Jordan", 
          "Darius Berry", 
          "Claudia Garcia") #second column

job_title <- c("Professional", 
               "Programmer", 
               "Management", 
               "Clerical", 
               "Developer", 
               "Programmer", 
               "Management", 
               "Clerical", 
               "Developer", 
               "Programmer") #third column

employee_data <- data.frame(id, name, job_title) #inserted all three columns in the newly created table.
print(employee_data) #table printed

#notice how the first and last name are combined into one column. A separate function will be used to split the name column into two columns.
separate(employee_data, name, into = c("first_name", "last_name"), sep = " ")

#however, to combine the two columns back with proper formatting, the unite function can be used. 

first_name <- c("John", 
                "Rob", 
                "Rachel", 
                "Christy", 
                "Johnson", 
                "Candace", 
                "Carlson", 
                "Pansy", 
                "Darius", 
                "Claudia")

last_name <- c("Mendes", 
               "Stewart", 
               "Abrahamson", 
               "Hickman", 
               "Harper", 
               "Miller", 
               "Landy", 
               "Jordan", 
               "Berry", 
               "Garcia")

job_title <- c("Professional", 
               "Programmer", 
               "Management", 
               "Clerical", 
               "Developer", 
               "Programmer", 
               "Management", 
               "Clerical", 
               "Developer", 
               "Programmer")

employee_data <- data.frame(id, first_name, last_name, job_title)

print(employee_data)

unite(employee_data, 'employee_name',first_name,last_name, sep = " ")
