#' Base colour palettes for IDEM, IDDU, and ACEFA
#'
#' @param p `character`. Which palette do you want?
#'
#' @return `character` of hex values
#'
#' @details
#' `"idem"`, `"iddu"`, and `"acefa"` return palettes for all colours in logos.
#' `"..._official"` palettes return only the four-colour palettes per the style-
#' guide from the designer.
#'
#' NB: These 'non-official' colours are estimated by a colour dropper thing
#' Gerry found on the internet and may or may not be exacty correct.
#'
#'
#' @export
#'
#' @examples
#'
#' idpal("idem")
idpal <- function(
    p = c("idem", "iddu", "acefa", "acefa_pink", "idem_official")
){

  switch(
    p,
    idem =           c("#262261", "#1d4d79", "#178793", "#00a79e", "#58b4ac", "#acd3d0", "#e6e7e8"),
    iddu =           c("#262261", "#27aae1", "#662d91", "#ee3a89", "#d0d2d3"),
    acefa =          c("#262261", "#247aa7", "#84b5cc", "#ddebf0", "#eb008b"),
    idem_official =  c("#262261", "#1d4d79", "#178793", "#00a79e"),
    iddu_official =  c("#262261", "#27aae1", "#662d91", "#ee3a89"),
    acefa_official = c("#262261", "#247aa7", "#84b5cc", "#ddebf0")
  )

}
