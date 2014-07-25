library(shiny)

# Define UI for random distribution application 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Regression on MTCARS Dataset"),
  
  # Sidebar with controls to select the random distribution type
  # and number of observations to generate. Note the use of the br()
  # element to introduce extra vertical spacing
  # User input values are Cylinders, Weight, Gear, Horsepower
  # Goal is build a regression Model on user selected variable for Mile Per Gallons
  # then same model is used to predict the mpg 
  # results are presented right side on 3 tabs: Plot, Model, Prediction.
  # application is run with runApp("shiny_app1") from the direcotory where shiny_app1 directory is located
  
  sidebarLayout(
    sidebarPanel(
      radioButtons("regre", "Regression Variables:",
                   c("Cylinders" = "cyl",
                     "Weight" = "wt",
                     "Gear" = "gear",
                     "Horse Power" = "hp")),
      br()
      
    ),
    
    # Show a tabset that includes a plot, summary, and table view
    # of the generated distribution
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Plot", plotOutput("plot")), 
                  tabPanel("Model", verbatimTextOutput("model")),
                  tabPanel("Prediction",verbatimTextOutput("pred"))
                
      )
    )
  )
))