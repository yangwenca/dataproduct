
shinyUI(
    pageWithSidebar(
        headerPanel("Son's Height Prediction"),
        sidebarPanel(
            h1('Welcome to Height Predction'),
            h2('This website uses father\'s height to predict son\'s height.'),
            h2('The data comes from 1078 observations of son\'s and father\'s height.'),
            textInput(inputId="FatherHeight", label= "Please enter father\'s height in inches (from 59 to 76)"),
            submitButton('submit'),
            width=12
        ),
        mainPanel(
            h4('Father\'s Height (from User)'),
            verbatimTextOutput("FHeight"),
            h4('Predicted Son\'s Height'),
            verbatimTextOutput("prediction"),
            h4('The red line is the regression line using son\'s height as outcome and father\'s height as the variable.'),
            h4('The blue dot indicates input and output.'),
            plotOutput('figure')
        )
    )
)