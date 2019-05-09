#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
rice <- read.csv("RiceDiversity.44K.MSU6.Phenotypes.csv")
rice$Region <- as.character(rice$Region)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$Region <- renderPrint({input$Regions})

  output$violinPlot <- renderPlot({
      plotdata <- rice %>% filter(Region %in% input$Regions)
    bp <- ggplot(data = plotdata,
                 aes_string(x="Region", y=input$Seed_Measurements, fill = "Region")) + geom_violin()
    bp

  })
  
})
