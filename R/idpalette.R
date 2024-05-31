#' @title ID Palette
#' @description
#' Create colour palettes based on IDEM, IDDU, and ACEFA colours
#'
#' @param p `character`. Which palette? See `?idpal` for details.
#' @param n `numeric`. How many colours
#'
#' @return `character` of hex colours length `n`
#' @export
#'
#' @examples
#'
#' idpalette("idem", 20)
idpalette <- function(
    p,
    n = NULL
){

  pal <- idpal(p)

  if (is.null(n)) {
    n <- length(pal)
  }

  if(n <= length(pal)){
    return(
      structure(
        pal[1:n],
        class = "idpalette",
        name = p
      )
    )
  } else {

    idp <- grDevices::colorRampPalette(pal)(n)

    structure(idp, class = "idpalette", name = p)

  }

}


#' @title IDEM palette
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
idem <- function(n = NULL){
  idpalette(
    p = "idem",
    n = n
  )
}

#' @title IDDU palette
#' @description
#' An alias for `idpalette(p = "iddu", n)`
#'
#' @param n `numeric`. How many colours?
#'
#' @return `character` of length `n`
#' @export
#'
#' @examples
#' iddu(5)
iddu <- function(n = NULL){
  idpalette(
    p = "iddu",
    n = n
  )
}

#' @title ACEFA palette
#' @description
#' An alias for `idpalette(p = "acefa", n)`
#'
#' @param n `numeric`. How many colours?
#'
#' @return `character` of length `n`
#' @export
#'
#' @examples
#' acefa(5)
acefa <- function(n = NULL){
  idpalette(
    p = "acefa",
    n = n
  )
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.idpalette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

}
