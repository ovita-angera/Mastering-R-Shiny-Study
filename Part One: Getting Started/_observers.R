library(shiny)

ui <- fluidPage(
  textInput("name", "What is your name?", placeholder = "Name"),
  textOutput("greeting")
)

server <- function(input, output, session){
  string <- reactive(paste0("Hello ", input$name, "!"))
  output$greeting <- renderText(string())
  observeEvent(input$name, {
    message("Greeting performed")
  })
}

shinyApp(ui, server)
