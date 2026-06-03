# ID Palette

Create colour palettes based on IDEM, IDDU, ACEFA, and The Kids Research
Institute Australia colours

## Usage

``` r
idpalette(p, n = NULL, rev = FALSE)
```

## Arguments

- p:

  `character`. Which palette? See
  [`?idpal`](https://idem-lab.github.io/idpalette/reference/idpal.md)
  for details.

- n:

  `numeric`. How many colours?

- rev:

  `logical` Reverse the colour order?

## Value

`idpalette` class object of hex colours length `n`. The `idpalette`
class has a print method that will plot the colours in the object, but
it is underneath that a `character` string of length `n` and can be
otherwise treated as such.

## Examples

``` r

idpalette(
  "idem",
  n = 20,
  rev = TRUE
)


kids_div <- idpalette(
   "thekids_diverging"
)

kids_div


str(kids_div)
#>  'idpalette' chr [1:6] "#FFFFFF" "#F1B434" "#F56B00" "#00A39C" "#4A99DE" ...
#>  - attr(*, "name")= chr "thekids_diverging"

is.character(kids_div)
#> [1] TRUE
```
