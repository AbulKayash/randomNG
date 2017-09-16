library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    set.seed(10)

    x    <- round(  rnorm(input$SampleSize, sd=input$sd))
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'purple', border = 'white', main="Histogram of Normal")

  })





})
