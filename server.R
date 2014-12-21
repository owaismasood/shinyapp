library(shiny)


modelfunction <- function(inputPara){
  data(mtcars)
  if(is.null(inputPara) ){
  data <- 'Please select the dependent parameters'  
  }
  else{
  inputFormula <- paste('mpg','~',paste(inputPara,collapse ='+')) 
  summary(lm(as.formula(inputFormula), data = mtcars))
  }
}

shinyServer(
  function(input,output){
  
   output$modelCoeff <- renderPrint(modelfunction(input$id1)$coefficients)
   output$adjustedR <- renderPrint(modelfunction(input$id1)$r.squared)
                   
  }
  
)