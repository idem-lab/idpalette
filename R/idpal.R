#' Colour palettes for IDEM, IDDU, ACEFA, and The Kids
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
#' `"thekids"` returns colours from the brand template, excluding black and
#'  white. `"_official"` includes black and white, while `"_diverging"` includes
#'  white, but excludes dark teal, midnight blue, and black, for use in
#'  diverging colour schemes (duh)
#'
#' NB: The additional IDEM, IDDU 'non-official' colours are estimated by a colour dropper thing
#' Gerry found on the internet and may or may not be exactly correct.
#'
#'
#' @export
#'
#' @examples
#'
#' idpal("idem")
idpal <- function(
    p = c(
      "idem",
      "idem_official",
      "iddu",
      "iddu_official",
      "acefa",
      "acefa_official",
      "thekids",
      "thekids_official",
      "thekids_diverging"
    )
){

  p <- match.arg(p)

  switch(
    p,
    idem =              c("#262261", "#1d4d79", "#178793", "#00a79e", "#58b4ac", "#acd3d0", "#e6e7e8"),
    idem_official =     c("#262261", "#1d4d79", "#178793", "#00a79e"),
    iddu =              c("#262261", "#27aae1", "#662d91", "#ee3a89", "#d0d2d3"),
    iddu_official =     c("#262261", "#27aae1", "#662d91", "#ee3a89"),
    acefa =             c("#262261", "#247aa7", "#84b5cc", "#ddebf0", "#eb008b"),
    acefa_official =    c("#262261", "#247aa7", "#84b5cc", "#ddebf0"),
    thekids =           c("#F1B434", "#F56B00", "#00A39C", "#00807A", "#4A99DE", "#1F3B73", "#565F5F"),
    thekids_official =  c("#FFFFFF", "#F1B434", "#F56B00", "#00A39C", "#00807A", "#4A99DE", "#1F3B73", "#565F5F", "#111921"),
    thekids_diverging = c("#FFFFFF", "#F1B434", "#F56B00", "#00A39C", "#4A99DE", "#565F5F")
  )

}
