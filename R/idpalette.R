#' @title ID Palette
#' @description
#' Create colour palettes based on IDEM, IDDU, and ACEFA colours
#'
#' @param p `character`. Which palette? See `?idpal` for details.
#' @param n `numeric`. How many colours?
#' @param rev `logical` Reverse the colour order?
#'
#' @return `idpalette` class object of hex colours length `n`.
#' The `idpalette` class has a print method that will plot the colours in the
#' object, but it is underneath that a `character` string of length `n` and can
#' be otherwise treated as such.
#'
#' @export
#'
#' @examples
#'
#' idpalette(
#'   "idem",
#'   n = 20,
#'   rev = TRUE
#' )
#'
idpalette <- function(
    p,
    n = NULL,
    rev = FALSE
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

    if(rev){
      idp <- rev(idp)
    }

    structure(idp, class = "idpalette", name = p)

  }

}


#' @title IDEM palette
#' @description
#' An alias for `idpalette(p = "idem", n, rev)`
#'
#' @param n `numeric`. How many colours?
#'
#' @return `character` of length `n`
#' @param rev `logical` Reverse the colour order?
#'
#' @return `idpalette` class object of hex colours length `n`.
#' The `idpalette` class has a print method that will plot the colours in the
#' object, but it is underneath that a `character` string of length `n` and can
#' be otherwise treated as such.
#'
#' @export
#'
#' @examples
#' idem(7)
idem <- function(
    n = NULL,
    rev = FALSE
){
  idpalette(
    p = "idem",
    n = n,
    rev = rev
  )
}

#' @title IDDU palette
#' @description
#' An alias for `idpalette(p = "iddu", n, rev)`
#'
#' @param n `numeric`. How many colours?
#' @param rev `logical` Reverse the colour order?
#'
#' @return `idpalette` class object of hex colours length `n`.
#' The `idpalette` class has a print method that will plot the colours in the
#' object, but it is underneath that a `character` string of length `n` and can
#' be otherwise treated as such.
#' @export
#'
#' @examples
#' iddu(5)
iddu <- function(
    n = NULL,
    rev = FALSE
  ){
  idpalette(
    p = "iddu",
    n = n,
    rev = rev
  )
}

#' @title ACEFA palette
#' @description
#' An alias for `idpalette(p = "acefa", n, rev)`
#'
#' @param n `numeric`. How many colours?
#' @param rev `logical` Reverse the colour order?
#'
#' @return `idpalette` class object of hex colours length `n`.
#' The `idpalette` class has a print method that will plot the colours in the
#' object, but it is underneath that a `character` string of length `n` and can
#' be otherwise treated as such.
#' @export
#'
#' @examples
#' acefa(5)
acefa <- function(
    n = NULL,
    rev = FALSE
){
  idpalette(
    p = "acefa",
    n = n,
    rev = rev
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
