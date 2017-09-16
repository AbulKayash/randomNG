
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Random Normal Generator"),

  # Sidebar with  slider inputs.
  sidebarLayout(
    sidebarPanel(
        sliderInput("bins","Number of bins:",min = 1,max = 50, value = 30)
       ,sliderInput("sd","Standard Deviation:",min = 1,max = 10, value = 5)
       ,sliderInput("SampleSize","Sample Size:",min = 1,max = 1000, value = 500)
    ),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")



    )
  )
))
