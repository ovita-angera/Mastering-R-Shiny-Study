library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?", value = NA),
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    paste0("Hello ", input$name)
  })
}

shinyApp(ui, server)
