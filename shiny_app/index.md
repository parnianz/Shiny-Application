---
title       : Shiny application for converting height to meter
subtitle    : 
author      : Parnian Zargham
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Outline

1. part 1. Shiny application
URL:https://parnianz.shinyapps.io/Projects/
2. part 2. Reproducible Pitch Presentation
3. part 3. all the codes are available in my github repo
URL:


--- .class #id 

## Shiny App
This app simply calucalte the height in meter by asking user to enter the height in cm.

It has two parts:
ui.R
server.R
for exmple if the user enter height=100cm, the app answer would be:

```r
100/100
```

```
## [1] 1
```


--- .class #id 

## Main Function
Here is the code for main function in this server.R:

```r
library(shiny)

HeightTometer <- function(Height) Height / 100

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$Height})
    output$calculation <- renderPrint({HeightTometer(input$Height)})
  }
)
```


--- .class #id 

## Summary

The simple app is introduced that converts height from cm to meter.

