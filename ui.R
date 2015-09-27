library(shiny)
#
shinyUI(fluidPage(
    
    titlePanel("BMI Calculator - A Course Project for \"Developing Data Products\""),
    
    sidebarLayout(
        sidebarPanel(
            h3("Enter your biometric data:"),
            sliderInput(inputId="wt", label=h4("Weight (pounds)"), min=20.0, max=350.0, value=150.0),
            sliderInput(inputId="ht", label=h4("Height (inches)"), min=36.0, max=90.0, value=70.0),
            submitButton("Calculate BMI")
        ),
        
        mainPanel(
            tabsetPanel(
                tabPanel("Calculator App",
                        h3("Your Body Mass Index (BMI) is:"),
                        verbatimTextOutput("bmi"),
                        h3("Interpretation:"),
                        h4("Underweight if BMI <18.5"),
                        h4("Normal weight if BMI in range 18.5-24.9"),
                        h4("Overweight if BMI in range 25-29.9"),
                        h4("Obese if BMI of 30 or greater")
                    ),
                tabPanel("Documentation",
                         h3("Body Mass Index (BMI) Calculator"),
                         p("This is a Shiny application for my Coursera course project for Developing Data Products. It is a simple calculator using height and weight information to determine a user's body mass index."),
                         h3("Using the Calculator:"),
                         p("Using this app requires user input for body weight and height. To find your BMI, use the sliders to set the height and weight values. Then click the \"Calculate BMI\" button."),
                         p("The range of height and weight values allowed for this calculator is limited to exclude the tails of the weight/height distribution for a typical population. We do not include small children with height < 24 inches for the BMI calculator. On the other end of the distribution, the height and weight values have upper bounds of 350 lb and 90 inches (7/f ft).")
                )
            )
        )
    )
))