# Colour palettes for IDEM, IDDU, ACEFA, and The Kids

Colour palettes for IDEM, IDDU, ACEFA, and The Kids

## Usage

``` r
idpal(
  p = c("idem", "idem_official", "iddu", "iddu_official", "acefa", "acefa_official",
    "thekids", "thekids_official", "thekids_diverging")
)
```

## Arguments

- p:

  `character`. Which palette do you want?

## Value

`character` of hex values

## Details

`"idem"`, `"iddu"`, and `"acefa"` return palettes for all colours in
logos. `"..._official"` palettes return only the four-colour palettes
per the style- guide from the designer.

`"thekids"` returns colours from the brand template, excluding black and
white. `"_official"` includes black and white, while `"_diverging"`
includes white, but excludes dark teal, midnight blue, and black, for
use in diverging colour schemes (duh)

NB: The additional IDEM, IDDU 'non-official' colours are estimated by a
colour dropper thing Gerry found on the internet and may or may not be
exactly correct.

## Examples

``` r

idpal("idem")
#> [1] "#262261" "#1d4d79" "#178793" "#00a79e" "#58b4ac" "#acd3d0" "#e6e7e8"
```
