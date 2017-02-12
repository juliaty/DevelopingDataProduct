library(shiny)
library(ggplot2)
library(plotly)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlotly({
    
    # generate bins based on input$bins from ui.R
    #x    <- faithful[, 2] 
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'darkgray', border = 'white')
    #plot_ly(x=x,type="histogram")
    f <- list(
      family = "Courier New, monospace",
      size = 18,
      color = "#7f7f7f"
    )
    x <- list(
      title = input$lstXs,
      titlefont = f
    )
    y <- list(
      title = input$lstYs,
      titlefont = f
    )
    
    data1<- NULL;
   
    if (input$lstSpecies=="All")
    {
      data1<- iris;
      p <- plot_ly(data = data1, x = eval(parse(text=cbind('data1$',input$lstXs))), y =eval(parse(text=cbind('data1$',input$lstYs))),type = "scatter",color=data1$Species, mode = "markers")
    }
    else{
      data1 <- subset(iris,Species==input$lstSpecies)
      p <- plot_ly(data = data1, x = eval(parse(text=cbind('data1$',input$lstXs))), y =eval(parse(text=cbind('data1$',input$lstYs))),type = "scatter",color=data1$Species, mode = "markers")
      
    }
    
    fit <- lm(eval(parse(text=cbind('data1$',input$lstYs)))~eval(parse(text=cbind('data1$',input$lstXs))),data=data1)
    p <- p  %>%
      layout(xaxis = x, yaxis = y)
    
    if (input$chkShowline==TRUE){
      p <- p  %>%
      add_trace(x = eval(parse(text=cbind('data1$',input$lstXs))), y = fitted(fit), mode = "lines",type = "scatter" )
    }
    p
      
    
    
  })
  
  output$tblOut <- renderDataTable({
    if (input$lstSpecies=="All")
    {
      iris
    }
    else{
      subset(iris,Species==input$lstSpecies)
    }
  },options = list(
    pageLength = 10
  ))
  
})
