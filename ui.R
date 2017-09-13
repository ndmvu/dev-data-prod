
library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Testing Utility for Assessment of Computer Science Students"),
    
    sidebarPanel(
      numericInput('Algorithms', 'Please enter your Score in Algorithms percent', 78,min = 0, max = 100, step = 1) ,
      numericInput('Operating_Systems', 'Please enter your Score in Operating Systems in percent', 91, min = 0, max = 100, step = 1),
      numericInput('Computer_Architecture', 'Please enter your Score in Computer Architecture in percent',74, min = 0, max = 100, step = 1)
    ), 
    mainPanel(
      p('This application is designed to analyze test scores of computer science 
        students in the subjects of Algorithms, Operating Systems, and Computer Architecture.
        '),
      p('The interpretation of the test scores is as following:'),
      tags$div(
        tags$ul(
          tags$li('Average <60, : Failed'),
          tags$li('Average [60-75] , : Average'),
          tags$li('Average [75-89] , : Good'),
          tags$li('Average >= 90 : Excellant')
        )
      ),
      
      h4('Considering the scores you have entered:'), 
      p('Algorithms:'), verbatimTextOutput("inputalgorithmsscore"),
      p('Operating Systems:'), verbatimTextOutput("inputoperatingsystemsscore"),
      p('Computer Architecture:'), verbatimTextOutput("inputcomputerarchitecturescore"),
      h4('The computed Averages is:'),verbatimTextOutput("estimate"),
      p('So you are considered as:'),strong(verbatimTextOutput("diagnostic"))
      
    )
    
  )   
)
