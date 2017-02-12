library(shiny)
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Data Relationship"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       selectInput("lstSpecies","Species:",as.factor(c("All",as.character(unique(iris$Species))))),
       selectInput("lstXs","X axis:",c("Sepal.Length"="Sepal.Length","Sepal.Width"="Sepal.Width")),
       selectInput("lstYs","Y axis:",c("Petal.Length"="Petal.Length","Petal.Width"="Petal.Width")),
       checkboxInput("chkShowline","Show Regression Line",FALSE)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      plotlyOutput("distPlot"),
      dataTableOutput('tblOut')
    )
  )
))
