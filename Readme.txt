Readme.txt

The application is a demo application to demonstrate Shiny Application Ui and Server capabilities

Dateset used:  mtcars in datasets package.

How to Run the App?
1. Place the directory shiny_app1 in working directory. shiny_app1 directory has 2 files ui.R and server.R and also the readme.txt file
2. In R studiom type the command runApp("shiny_app1")
3. this action launches the Web Application in a Rstudio inbuolt Browser window

User Manual
1. User can select any Regression variable thaht is to be used to predict the mpg(Mile Per Gallon) variable
2. As the user selects, the results are presented instantaneously on the right panel tabs: Plot, Model, Prediction
3. Plot give the Plot of the data betwen mpg(y) and Regression variable selected(x)
4. Model presents the Regression Model built
5. Prediciton presents the predicted mpg values from the mtcars dataset.
