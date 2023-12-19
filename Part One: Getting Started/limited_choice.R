library(shiny)
hashiras <- c("Gyu Tomioka", "Uzui Tengen", "Rengoku San", "Kokushibo", "Akaza", "Doma")

ui <- fluidPage(
  selectInput("state", "what is your favorite state", state.name),
  radioButtons("hashira", "who is your favorite hashira", hashiras)
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)
