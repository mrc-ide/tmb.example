## usethis namespace: start
#' @useDynLib tmb.example, .registration = TRUE
## usethis namespace: end
NULL

#' Run TMB model
#'
#' @return sdreport output
#' @export
run_model <- function() {
  set.seed(123)
  data <- list(Y = rnorm(10) + 1:10, x=1:10)
  parameters <- list(a=0, b=0, logSigma=0)
  obj <- TMB::MakeADFun(data, parameters, DLL="tmb.example")
  obj$hessian <- TRUE
  opt <- do.call("optim", obj)
  opt
  opt$hessian ## <-- FD hessian from optim
  obj$he()    ## <-- Analytical hessian
  TMB::sdreport(obj)
}
