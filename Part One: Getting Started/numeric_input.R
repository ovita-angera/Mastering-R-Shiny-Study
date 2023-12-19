library(shiny)

ui <- fluidPage(
  numericInput("num1", "First Number", value = 0, min = 0, max = 100),
  sliderInput("num2", "Second Number", value = 20, min = 0, max = 100),
  sliderInput("range", "Range", value = c(10,30), min = 0, max = 100),
  dateInput("date", "When is the date today", format = "dd-mm-yyyy"),
  dateRangeInput("date_range", "How long are you on vacation", format = "dd-mm-yyyy")
)

server <- function(input, output, session){
}

shinyApp(ui, server)
