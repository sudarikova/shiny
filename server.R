library("shiny")

langua <- read.csv("http://hsequantling.wikispaces.com/file/view/all_words.csv", sep = ",", header = TRUE, encoding = "UTF-8")
shinyServer(function(input, output) {
  
  output$table <- DT::renderDataTable(DT::datatable({
    data <- langua
    if (input$langui != "All languages") {
      data <- data[data$language == input$langui,]
    }
    data
  }))
  
})