library(shiny)

shinyServer(function(input, output){
  
  output$Environment <- renderPrint(Sys.getenv("GITHUB_PAT"))

})
