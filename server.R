library(shiny)
library(datasets)
data(trees)

shinyServer(function(input, output) {
  output$chart <- renderPlot({
    switch(input$selectPlot,
           '1' = hist(trees[, as.numeric(input$selectAttribute)], xlab = names(trees[as.numeric(input$selectAttribute)]), col = 'lightblue', main = paste('#Black Cherry trees relative to their' , tolower(names(trees[as.numeric(input$selectAttribute)])))),
           '2' = pie(trees[, as.numeric(input$selectAttribute)], main = paste('#Black Cherry trees relative to their' , tolower(names(trees[as.numeric(input$selectAttribute)])))),
           '3' = plot(trees[, as.numeric(input$selectAttribute)], ylab = names(trees[as.numeric(input$selectAttribute)]), main = 'Different #Black Berry trees'))
    output$mean <- renderText({paste('Mean:', mean(trees[, as.numeric(input$selectAttribute)]))})
    output$median <- renderText({paste('Median:', median(trees[, as.numeric(input$selectAttribute)]))})
    output$stddev <- renderText({paste('Standard deviation:', sd(trees[, as.numeric(input$selectAttribute)]))}) 
    output$min <- renderText({paste('Minimum:', min(trees[, as.numeric(input$selectAttribute)]))})
    output$max <- renderText({paste('Maximum:', max(trees[, as.numeric(input$selectAttribute)]))})
    output$trees <- renderText({paste('#Trees:', nrow(trees))})
  })
})