library(shiny)

ui <- fluidPage(
  textInput("name", "Name", placeholder = "Your name"),
  sliderInput("date", "When should we deliver?", value = as.Date('2020-09-17'), min = as.Date('2020-09-16'),
              max = as.Date('2020-09-23')),
  sliderInput("animate", "Press play", value = 0, min = 0, max = 100, step = 5, animate = TRUE),
  selectInput("name", "what is your favorite state", choices = list(
    `dogs` = c("Rotweiler", "Siberian Husky", "German Shepherd", "Bosco"),
    `cats` = c("Blue", "Black", "White")
  ))
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)
