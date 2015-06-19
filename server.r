bmi <- function(weight, height) weight / height^2

eval = function(bmi){
    if(bmi <= 18.5) return ('You are under weight')
    if(bmi > 18.5 & bmi < 25) return ('Congratulations! You are normal weight :)')
    if(bmi >= 25 & bmi < 30) return ('You are over weight')
    if(bmi > 30) return ('You are OBESE')
}
    
    
shinyServer(
    function(input, output) {
        output$inputValue1 <- renderPrint({input$weight})
        output$inputValue2 <- renderPrint({input$height})
        output$prediction <- renderPrint({bmi(input$weight, input$height)})
        output$eval <- renderPrint({eval(bmi(input$weight, input$height))})
    }
)

