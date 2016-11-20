#
# UI for determining the return on investment of an initial investment with
# periodic contributions and a rate of return over a specified number of years.
#

library(shiny)
library(plotly)

# Define UI for application that draws a histogram
fluidPage(
  # Application title
  HTML("<center>"),
  titlePanel("Future Value of Money"),
  HTML("</center>"),
  tabsetPanel(
    tabPanel("Documentation",
             h2("Description:"),
             p("The ROI Calculator determines the future value of money given an initial investment amount, a rate of return, length of time of the invesment and the amount of periodic contributions. Also, a plot is created showing future value of that initial investment with periodic contributions at a particular rate of return over 50 years."),
             strong(p("Click on the 'ROI Calculator' tab above to get to the calculator.")),
             h2("Inputs"),
             h3("Present Value"),
             p("Numeric field to provide the initial investment amount."),
             h3("Annual Rate of Return"),
             p("Slider to input the annual rate of return as a percentage."),
             h3("Number of Years"),
             p("Slider to input how long the money will be invested."),
             h3("Annual Investment"),
             p("Numeric field to provide the annual contributions on top of the initial investment."),
             h2("Outputs"),
             h3("Plot"),
             p("Plot the future value of the investment at the given rate of return considering contributions for 50 years. Useful to see 'what if' scenarios."),
             h3("Future Value"),
             p("The future value of the investment is calculated and displayed along with the percentage (and amount) of the investment after the period that is attributed to Interest.")
    ),
    tabPanel("ROI Calculator",
             sidebarLayout(
               sidebarPanel(
                 numericInput(inputId = "presVal", label = "Initial Investment",
                              value = 100, min = 0),
                 sliderInput(inputId = "rate", label = "Annual Rate of Return (%)",
                             value = 5, min=0, max=20, step = .5, ticks = 1),
                 sliderInput(inputId = "num", label = "Number of Years",
                             value = 10, min = 0, max = 50, step = 1, ticks = 1),
                 numericInput(inputId = "contrib", label = "Annual Investments",
                              min = 0, value = 10)
               ),
               mainPanel(
                 plotlyOutput("rtn_plot"),
                 fluidRow(
                   HTML("<center>"),
                   h3(textOutput("fv")),
                   HTML("</center>")
                 ),
                 fluidRow(
                   HTML("<center>"),
                   h3(textOutput("roi")),
                   HTML("</center>")
                 )
               )
             )
             
    )
  )
)