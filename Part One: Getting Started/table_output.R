library(shiny)

ui <- fluidPage(
  tableOutput("static"),
  dataTableOutput("dynamic")
)

server <- function(input, output, session) {
  output$static <- renderTable(head(mtcars))
  output$dynamic <- renderTable(mtcars, options = list(pageLength = 5,
                                                           ordering = FALSE,
                                                           searching = FALSE))
}

shinyApp(ui, server)


library(reactable)
reactable(mtcars, searchable = T, filterable = T)
