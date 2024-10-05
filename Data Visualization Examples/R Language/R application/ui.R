# Load libraries
library(shiny)
library(tidyverse)
library(rio)
library(ggthemes)
library(rsconnect)

# Load dataset 
adult=import("/Users/parisha/ShinyApp/Final Project/adult.csv")
# Convert column names to lowercase for convenience 
names(adult)=tolower(names(adult))

# Application Layout
shinyUI(fluidPage(
  br(),
  # TASK 1: Application title
  titlePanel("Trend in Demographics and Income"),
  p("Explore the difference between people who earn less than 50K and more than 50K. You can filter the data by country, then explore various demogrphic information."),
  
  # TASK 2: Add first fluidRow to select input for country
  fluidRow(
    column(12, 
           wellPanel(selectInput("country","Select Country",choices=c("United-States","Canada","Mexico","Germany","Philippines")))
    )  # add select input 
  ),
  
  # TASK 3: Add second fluidRow to control how to plot the continuous variables
  fluidRow(
    column(3, 
           wellPanel(
             p("Select a continuous variable and graph type (histogram or boxplot) to view on the right."),
             radioButtons("continuous_variable","Continuous",choices=c("age","hours_per_week")),   
             radioButtons("graph_type","Graph",choices=c("histogram","boxplot")) 
           )
    ),column(9, plotOutput("p1"))  
  ),
  
  # TASK 4: Add third fluidRow to control how to plot the categorical variables
  fluidRow(
    column(3, 
           wellPanel(
             p("Select a categorical variable to view bar chart on the right. Use the check box to view a stacked bar chart to combine the income levels into one graph. "),
             radioButtons("categorical_variable","Category",choices=c("education","workclass","sex")), 
             checkboxInput("is_stacked","Stack Bar",value=FALSE)
           )
    ),
    column(9, plotOutput("p2"))
  )
)
)

