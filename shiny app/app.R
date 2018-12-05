library(shiny)

ui <- fluidPage(


  titlePanel("Convert Z-value to p-value"),

  numericInput(inputId = "Z","Enter the Z-value",min=-4,max=4,NA),

  mainPanel("P-value"),

  verbatimTextOutput("result")
)


server <- function(input, output) {

  output$result<-renderPrint(1-pnorm(input$Z))
}

shinyApp(ui = ui, server = server)
