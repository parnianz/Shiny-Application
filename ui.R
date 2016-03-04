library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Conveting height from cm to m"),
    
    sidebarPanel(
      numericInput('Height', 'Height in cm', 90, min = 50, max = 250, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Calculation'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Your height in meter is:  '),
      verbatimTextOutput("calculation")
    )
  )
)

