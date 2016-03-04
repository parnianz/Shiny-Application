library(shiny)

HeightTometer <- function(Height) Height / 100

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$Height})
    output$calculation <- renderPrint({HeightTometer(input$Height)})
  }
)
