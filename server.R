library(shiny)
library(datasets)
library(ggplot2)
# Define server logic for random distribution application
shinyServer(function(input, output) {
  
  # Reactive expression to generate the requested Regressor variable. This is 
  # called whenever the inputs change. The output functions defined 
  # below then all use the value computed from this expression

  v1 = reactive({
    v1 = input$regre
    
  })
  
 
  # Generate a plot of the mpg data against the chosen regressor variable.
  
  output$plot <- renderPlot({
    v1 <- input$regre
    qplot(mtcars[,eval(v1)],mtcars[,"mpg"], data=mtcars, goem =c("point","smooth"), method="lm", formula=y~x,
          facets=.~am,col=cyl,main=paste('mpg Vs ',v1,sep=''), xlab=paste('',v1,'',sep=''), ylab="mpg")
  })
  
  # Generate a summary of the Regression Model
  output$model <- renderPrint({
    v1 <- input$regre
    r1=lm(mtcars[,"mpg"]~mtcars[,eval(v1)], data=mtcars)
    summary(r1)
  })
  
  # Generate the Prediction values with default 95% confidence level
  output$pred <- renderPrint({
    v1 <- input$regre
    p1=predict(lm(mtcars[,"mpg"]~mtcars[,eval(v1)], data=mtcars), newdata=mtcars, interval="confidence")
    p1
  })
})