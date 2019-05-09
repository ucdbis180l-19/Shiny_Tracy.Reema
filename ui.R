#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rice Phenotypes by Region"),
  
  # Some helpful information
  helpText("This application creates a boxplot that will display the difference between seed measurements between regions"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("Seed_Measurements",
                   "Choose a seed measurement to display:",
                   c("Seed.length",
                     "Seed.width",
                     "Seed.volume",
                     "Seed.surface.area")
                   )),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("boxPlot")
    )
  )
))
