# Sys.setenv(R_DEFAULT_SAVE_VERSION = 2)
# Sys.setenv(R_DEFAULT_SERIALIZE_VERSION = 2)

# cars_model <- lm(mpg ~ cyl + hp + wt, data = mtcars)
# usethis::use_data(cars_model, internal = TRUE, overwrite = TRUE)

# devtools::document()
# devtools::check()
# devtools::build(binary = TRUE)

#' Predicts mpg
#'
#' @importFrom stats predict
#'
#' @name predict_mtcars
#' @param new_data Predictors
#' @return Dataset of predictions
#' @export
predict_mtcars <- function(new_data) {

  new_data$mpg_pred <- predict(cars_model, new_data)

  return(new_data)
}
