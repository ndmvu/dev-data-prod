library(shiny) 

Average_Factor<-function(Algorithms,Operating_Systems,Computer_Architecture)
  {(Algorithms + Operating_Systems + Computer_Architecture)/3}

diagnostic_f<-function(Algorithms, Operating_Systems, Computer_Architecture){Avg_Val<-(Algorithms + Operating_Systems + Computer_Architecture)/3
  ifelse(Avg_Val<60,"Failed", ifelse(Avg_Val >=60 & Avg_Val<75 ,"Average",ifelse(Avg_Val >= 75 & Avg_Val < 90 ,"Good",ifelse(Avg_Val>=90 ,"Excellant")))
  )}

shinyServer(
  function(input, output) {
    
    output$inputalgorithmsscore<-renderPrint({input$Algorithms})
    output$inputoperatingsystemsscore<-renderPrint({input$Operating_Systems})
    output$inputcomputerarchitecturescore<- renderPrint({input$Computer_Architecture})
    output$estimate<-renderPrint({Average_Factor(input$Algorithms,input$Operating_Systems,input$Computer_Architecture)})
    output$diagnostic<-renderPrint({diagnostic_f(input$Algorithms,input$Operating_Systems,input$Computer_Architecture)})
  } 
)