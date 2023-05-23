
#' Linear regression age prediction
#'
#' Using linear regression to predict age
#' @param dataset DNA methylation matrix
#' @return Predicted age
#' @examples 
#' predictedAge <- lmPredictAge(beta)
#' @export
lmPredictAge <- function(dataset){
  data("lmCoefs")
  if (!is.matrix(dataset)) {
    stop("Invalid dataset. Please provide a matrix dataset.")
  }
  if(is.null(dim(dataset)) || any(dim(dataset) == 0)) {
    stop("Invalid dataset dimensions. Please provide a non-empty matrix.")
  }
  predictedResults <- predictTraits(dataset)
  lmPrediction <- as.data.frame(predict.lm(lmCoefs, newdata = predictedResults))
  colnames(lmPrediction) <- "predictedAge"
  return(lmPrediction)
}



#' Random forest age prediction
#'
#' Using random forest to predict age
#' @param dataset DNA methylation matrix
#' @return Predicted age
#' @examples 
#' predictedAge <- rfPredictAge(beta)
#' @export
rfPredictAge <- function(dataset) {
  data("rfCoefs")
  if(!is.matrix(dataset)) {
    stop("Invalid dataset. Please provide a matrix dataset.")
  }
  if(is.null(dim(dataset)) || any(dim(dataset) == 0)) {
    stop("Invalid dataset dimensions. Please provide a non-empty matrix.")
  }
  predictedResults <- predictTraits(dataset)
  rfPrediction <- as.data.frame(predict(rfCoefs, newdata = predictedResults))
  colnames(rfPrediction) <- "predictedAge"
  return(rfPrediction)
}



#' Support vector machines age prediction
#'
#' Using support vector machines to predict age
#' @param dataset DNA methylation matrix
#' @return Predicted age
#' @examples 
#' predictedAge <- svmPredictAge(beta)
#' @export
svmPredictAge <- function(dataset) {
  data("svmCoefs")
  if (!is.matrix(dataset)) {
    stop("Invalid dataset. Please provide a matrix dataset.")
  }
  if(is.null(dim(dataset)) || any(dim(dataset) == 0)) {
    stop("Invalid dataset dimensions. Please provide a non-empty matrix.")
  }
  predictedResults <- predictTraits(dataset)
  svmPrediction <- as.data.frame(predict(svmCoefs, newdata = predictedResults))
  colnames(svmPrediction) <- "predictedAge"
  return(svmPrediction)
}


