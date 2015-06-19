shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("BMI calculator"),
        sidebarPanel(
            numericInput('weight', 'Weight kg', value = 50, min = 10, max = 200, step = 20),            
            numericInput('height', 'Height m', value = 1.6, min = 0.5, max = 2.5, step = 10),
            submitButton('Submit')
        ),
        mainPanel(
            h3('This is to calculate your BMI'),
            h5('BMI Categories:'),
            h5('Underweight = <18.5'),
            h5('Normal weight = 18.5-24.9'),
            h5('Overweight = 25-29.9'),
            h5('Obesity = BMI of 30 or greater'),
                    
            h4('Please input your weight (in kg) and your height (in meter) at left side.'),

            h4('You input weight in Kg'),
            verbatimTextOutput("inputValue1"),
            h4('You input height in meter'),
            verbatimTextOutput("inputValue2"),
            h4('Your BMI is'),
            verbatimTextOutput("prediction"),
            verbatimTextOutput("eval")
        )
    )
)