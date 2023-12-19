library(shiny)

ui <- fluidPage(
  textOutput("greeting"),
  verbatimTextOutput("regression"),
  verbatimTextOutput("mtcars"),
  verbatimTextOutput("t_test")
)

server <- function(input, output, session){
  output$greeting <- renderText("Good Morning!")
  output$regression <- renderPrint(str(lm(mpg ~ wt, data = mtcars)))
  output$mtcars <- renderPrint(summary(mtcars))
  output$t_test <- renderPrint(t.test(1:5, 2:6))
}

shinyApp(ui, server)