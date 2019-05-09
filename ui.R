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
  titlePanel("Rice Seed Measurements by Region"),
  
  # Some helpful information
  helpText("This application creates a boxplot that will display the differences between seed measurements between regions"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       radioButtons("Seed_Measurements",
                   "Choose a seed measurement to display:",
                   c("Seed.length",
                     "Seed.width",
                     "Seed.volume",
                     "Seed.surface.area")
                   ),

           checkboxGroupInput("Regions", 
                              h3 ("Group by Region"),
                              choices = list("Africa" = 1,
                                             "America" = 2,
                                             "C Asia" = 3,
                                             "E Asia" = 4,
                                             "Europe" = 5,
                                             "Mid East" = 6,
                                             "Pacific" = 7,
                                             "S Asia" = 8,
                                             "SE Asia" = 9,
                                             "NA" = 10),
                              selected = 1)),

  
    
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("violinPlot")
    )
  )
))
