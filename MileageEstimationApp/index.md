---
title       : MEA - The Mileage Estimation Application
subtitle    : A must have application for car designers
author      : Sada
job         : Data Scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny, interactive]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---

## Why MEA?

1. The motoring undustry is at a turning point. Cars that use gasoline are facing intense pressure from those using renewable energy.  


2. The answer to this challenge is simple - design fuel efficient cars that provide higher miles per gallon and cheaper to operate.


3. The design process, however, is not simple. Designers need all the help they can get to improve the performance.


4. This application is an aid to car designers and estimates the miles per gallon (MPG) for a car given other design characteristics.


---

## How does MEA work?

1. The Motor Trend magazine collected data about performance of 32 cars. This data was extensively analyzed and a linear regression model built.


2. The analysis showed that the three key parameters affect MPG are weight of the car, acceleration measured in time to cover first quarter of a mile and the transmission type


3. With these parameters from the design process, the application can estimate the MPG with an accuracy of 85%


4. The application is easy to use and available to all on the web. Link is https://sadashivab.shinyapps.io/CarMileageEstimation 

---

## MEA Demo 

<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <label for="weight">Weight of the car in pounds:</label>
        <input id="weight" type="number" class="form-control" value="1800"/>
      </div>
      <div id="transType" class="form-group shiny-input-radiogroup shiny-input-container">
        <label class="control-label" for="transType">Transmission Type</label>
        <div class="shiny-options-group">
          <div class="radio">
            <label>
              <input type="radio" name="transType" value="Automatic"/>
              <span>Automatic</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="transType" value="Manual" checked="checked"/>
              <span>Manual</span>
            </label>
          </div>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <label for="qsec">Number of seconds to cover quarter of mile</label>
        <input id="qsec" type="number" class="form-control" value="30"/>
      </div>
      <div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </form>
  </div>
  <div class="col-sm-8">
    <pre id="predictedValue" class="shiny-text-output"></pre>
  </div>
</div>

---

## MEA on shinyapps 

https://sadashivab.shinyapps.io/CarMileageEstimation

<img src="shinyapp.JPG" />
