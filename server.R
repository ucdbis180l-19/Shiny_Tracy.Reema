#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
rice <- read.csv("RiceDiversity.44K.MSU6.Phenotypes.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$Regions <- renderPrint({input$Regions}) 
  output$violinPlot <- renderPlot({
    
    bp <- ggplot(data = rice,
                aes_string(x="Region",
                            y = input$Seed_Measurements,
                            fill = "Region"
                           ))
                bp + geom_violin()
    

  })
  
})
