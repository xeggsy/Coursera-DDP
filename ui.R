library(shiny)

shinyUI(fluidPage( 
  theme = 'cerulean.css',
  headerPanel('Black Cherry Trees Statistics'),
  mainPanel(plotOutput('chart')),
  sidebarPanel(position = 'right', h4('Statistics'), strong(textOutput('mean'), textOutput('trees'), textOutput('median'), textOutput('min'), textOutput('max'), textOutput('stddev')), br(),
               helpText('If you would like to see more statistics shown here or anything else that might be of value/interest to you, please just drop me a message at my github https://github.com/xeggsy/Coursera-DDP')),
  fluidRow(column(12, hr())),
  fluidRow(column(2, tags$div(title = 'Select the attribute that you would like to view', selectInput('selectAttribute', label = h4('View'), choices = list('Girth' = 1, 'Height' = 2, 'Volume' = 3), selected = 2))), 
           column(2, tags$div(title = 'Select the type of plot you would like to see/use', selectInput('selectPlot', label = h4('Plot'), choices = list('Histogram' = 1, 'Pie Chart' = 2, 'Dot Chart' = 3), selected = 1)))),
  tags$div(title = 'Click on this button to draw the new graph', fluidRow(column(2, submitButton('Submit'))))
))