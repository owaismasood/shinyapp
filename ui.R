library(shiny)

shinyUI( pageWithSidebar(
  
  headerPanel('BUILDING MODELS for MPG CONSUMPTION'),
  sidebarPanel(
    h3('Model Variables'),
    checkboxGroupInput('id1','List of Variables : ',c('# of Cylinder' = 'cyl',
                                          'Displacement' = 'disp',
                                          'Gross horsepower' = 'hp',
                                          'Rear axle ratio' = 'drat',
                                          'Weight' = 'wt',
                                          '1/4 Mile Time' = 'qsec',
                                          'V/S' = 'vs',
                                          'Transmission' = 'am',
                                          'Number of forward gears' = 'gear',
                                          'Number of carburetors' = 'carb'
                                          )
                       ),
    submitButton('Submit')
    ),
  
  mainPanel(
    p('The Purpose of this study is to explore and quantify the relationship between Fuel Consumption (in MPG) and other variables in CARS.'),
    p('The dataset used for this study was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles.'),
    h3('Independent Variable - MPG | Strategy'),
    p('Find the set of variables which mimimized R2'),
    h3('Adjusted R2'),
    verbatimTextOutput('adjustedR'),
    h3('Coefficients of the Model are'),
    verbatimTextOutput('modelCoeff')
  )
))