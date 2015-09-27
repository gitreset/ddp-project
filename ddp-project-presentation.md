Easy BMI Calculator: A Shiny App
========================================================
author: Your Friendly Courserian
date: 2015-09-27
font-family: 'Helvetica'
transition: rotate
transition-speed: slow

Purpose of the App
========================================================

This Shiny App is designed to easily explore the weight-height space for Body Mass Index (BMI) medical/health metric.

It is a simple calculator that allows a user to check BMI values for any weight and height within predefined bounds of the app. The user does not need to type in any input data. The sliders for height and weight are a lot quicker and easier to use than text fields.

Inputs and Model
========================================================

The two inputs to the BMI calculator are body weight (in pounds) and height (in inches).

The heart of server.R for calculating BMI with these two inputs is the R expression:
```
bmi <- function (wt, ht){703*wt/(ht*ht)}
```
where `wt` is weight in lbs and `ht` is height in inches.

Documentation
========================================================
The App documentation is included in the app itself. 

It is organized using the `tabsetPanel` functionality in `ui.R`, allowing the user to switch the right side of the app screen between documentation and application results.

Calculating the BMI for a new input requires pressing the `Calculate BMI` button. This is done to make the computation and app UI leaner and simpler.


Further Improvements
========================================================

This BMI calculator may be improved with additional features, including:
- An option to give input in SI units (kg & cm), using a radio button
- Displaying a plot of where the BMI for a given user input lies on the height-weight spectrum
- Demarcating the regions of underweight/normal/overweight/obese using different colors.
