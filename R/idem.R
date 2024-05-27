#' @title idem palette
#' @description
#' An alias for `idpalette(p = "idem", n)`
#'
#' @param n `numeric`. How many colours?
#'
#' @return `character` of length `n`
#' @export
#'
#' @examples
#' idem(7)
idem <- function(n){
  idpalette(
    p = "idem",
    n = n
  )
}
