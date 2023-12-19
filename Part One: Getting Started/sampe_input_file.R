library(shiny)

ui <- fluidPage(
  textInput("first_name", "First Name", placeholder = 'First Name'),
  textInput("last_name", "Last Name", placeholder = 'Last Name'),
  textInput("email", "Email", placeholder = 'Email Address'),
  dateInput("dob", "What is your date of birth?")
)

server <- function(input, output, session){
}

shinyApp(ui, server)
