#' @title scale ID continuous
#' @description Convenience wrapper to `ggplot2::continuous_scale` to allow use of
#' `idpalette` or any arbitrary set of colours to be used as a `ggplot2` fill
#' or colour scale
#'
#' @param cols `character`. A vector of colours
#' @param aesthetics Scale aesthetic.
#' @param na.value Garn - whaddaya want in the `NA`s?
#'
#' @return A `ggproto` object of class `Scale` and `ScaleContinuous`
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(mtcars) +
#'   geom_point(
#'     aes(
#'       x = disp,
#'       y = hp,
#'       colour = qsec
#'     ),
#'     size = 5
#'   ) +
#'   scale_id_continuous(
#'     cols = iddu(),
#'     aesthetics = "colour"
#'   )
#'
scale_id_continuous <- function(
  cols,
  aesthetics = c("fill", "colour"),
  na.value = "transparent"
){

  aesthetics <- match.arg(aesthetics)

  ggplot2::continuous_scale(
    aesthetics = aesthetics,
    palette = scales::pal_gradient_n(
      colours = cols,
      values = NULL,
      space = "Lab"
    ),
    na.value = na.value,
    guide = "colourbar",
  )

}
