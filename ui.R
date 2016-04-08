library("shiny")

langua <- read.csv("http://hsequantling.wikispaces.com/file/view/all_words.csv", sep = ",", header = TRUE, encoding = "UTF-8")

shinyUI(
  fluidPage(
    titlePanel("One thousand Most Frequently Used Words"),
    
    fluidRow(
      column(4,
             selectInput("langui",
                         "Choose language:",
                         c("All languages",
                           unique(as.character(langua$language))))
      )
    ),
    
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)