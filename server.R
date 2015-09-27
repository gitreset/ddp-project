library(shiny)

bmi <- function (wt, ht){703*wt/(ht*ht)}

shinyServer(function(input, output) {    
    output$wt <- renderPrint(input$wt)
    output$ht <- renderPrint(input$ht)
    output$bmi <- renderPrint(bmi(input$wt, input$ht))
})
