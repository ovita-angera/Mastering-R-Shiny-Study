library(shiny)

animals <- c("dog", "cat", "cow", "kiwi", "seal")
ui <- fluidPage(
  radioButtons("rb", "Choose One:",
               choiceNames = list(
                 icon("angry"),
                 icon("smile"),
                 icon("sad-tear")
               ),
               choiceValues = list("angry", "happy", "sad")),
  checkboxGroupInput("animal", "what animals do you like?", animals),
  checkboxInput("quit", "Quit the program?", value = FALSE),
  fileInput("Upload", NULL),
  actionButton("click", "Click me!", class = "btn-success"),
  actionButton("drink", "Drink me!", icon = icon("cocktail"))
)


server <- function(input, output, session){
  
}

shinyApp(ui, server)
