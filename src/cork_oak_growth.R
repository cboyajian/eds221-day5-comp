# Cork oak height growth model
# Authors: Mariola Sánchez-González, Margarida Tomé, Gregorio Montero
# Source: https://hal.archives-ouvertes.fr/hal-00883925/document

# height_t2: oak height at time 2 (meters)
# height_t1: oak height at time 1 (meters)
# t1: tree age at time 1, (years)
# t2: tree age at time 2 (years)

#' Estimate Cork Oak Growth
#' 
#' This is a function from this paper, which calculates the tree height for cork oaks given some initial age and height. 
#'
#' @param height_t1 
#' @param t1 
#' @param t2 
#'
#' @return
#' @export
#'
#' @examples

height_t2 <- function(height_t1, t1, t2) {
  20.7216 / (1 - (1 - 20.7216 / height_t1) * (t1 / t2) ^ 1.4486)
}


