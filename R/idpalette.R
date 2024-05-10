#' Create colour palettes based on IDEM, IDDU, and ACEFA colours.
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
    warning(
      sprintf(
        "%s is greater than the number of colours in this palette (%s)\n Returning interpolated palette"
      )
    )

    idp <- grDevices::colorRampPalette(pal)(n)

    structure(idp, class = "idpalette", name = p)

  }

}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}
