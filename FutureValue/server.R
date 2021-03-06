#
# This is the server logic of a Shiny web application. Calculates 3 output
# values:
#   - the future value of the investment given rate, period, contributions
#       and present value.
#   - Introductory text of that future value
#   - plot of the return given present value, ROI and annual contribution amt.
#

library(shiny)
library(FinCal)
library(plotly)

# Define server logic required to draw a histogram
function(input, output) {
  
  output$fv <- renderText({
    if (input$rate == 0) {
      futVal = input$presVal + input$contrib * input$num
    }
    else {
      futVal <- -fv(r = input$rate/100,
                    pv = input$presVal,
                    pmt = input$contrib,
                    n = input$num,
                    type = 0)
    }
    paste0("Value of Your Investment after ", input$num, " Years is: $",
           format(round(futVal,2), big.mark=","))
  })
  
  output$roi <- renderText({
    if (input$rate == 0) {
      futVal <- input$presVal + input$contrib * input$num
      roiVal <- 0
    }
    else {
      futVal <- -fv(r = input$rate/100,
                    pv = input$presVal,
                    pmt = input$contrib,
                    n = input$num,
                    type = 0)
      roiVal <- futVal - (input$presVal + input$contrib * input$num)
    }
    paste0(round(roiVal * 100 / futVal, 2),
           "% ($", format(round(roiVal, 2), big.mark=","),
           ") is from Return on Investment."
    )
  })
  
  output$rtn_plot <- renderPlotly({
    
    x = 1:50
    if (input$rate == 0) {
      y = input$presVal + input$contrib * x
    }
    else {
      y = -fv(r = input$rate/100,
              pv = input$presVal,
              pmt = input$contrib,
              n = 1:50,
              type = 0)
    }
    
    y = round(y, 2)
    
    plot_ly(x = x, y = y, type = "scatter", mode = "lines") %>%
      layout(title = paste("Time Value of Investment (Rate =", input$rate, "%)"),
             xaxis = list(title = "Years"),
             yaxis = list (title = "Value of Investment"))
    
  })
}
