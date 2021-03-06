
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)

shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      checkboxGroupInput("stores",
                         h2("please select a store type:"),
                         choices = list("post" = "post", "star" = "star"),
                         selected = "post")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      leafletOutput("showmap"),
      textOutput("testGet"),
      tableOutput("showstores")
    )
  )
))
