# scale ID continuous

Convenience wrapper to
[`ggplot2::continuous_scale`](https://ggplot2.tidyverse.org/reference/continuous_scale.html)
to allow use of `idpalette` or any arbitrary set of colours to be used
as a `ggplot2` fill or colour scale

## Usage

``` r
scale_id_continuous(
  cols,
  aesthetics = c("fill", "colour"),
  na.value = "transparent",
  guide = "colourbar",
  ...
)
```

## Arguments

- cols:

  `character`. A vector of colours

- aesthetics:

  Scale aesthetic.

- na.value:

  Garn - whaddaya want in the `NA`s?

- guide:

  A function used to create a guide or its name. See
  [`ggplot2::guides()`](https://ggplot2.tidyverse.org/reference/guides.html)
  for more information

- ...:

  Arguments passed on to
  [`ggplot2::continuous_scale`](https://ggplot2.tidyverse.org/reference/continuous_scale.html)

## Value

A `ggproto` object of class `Scale` and `ScaleContinuous`

## Examples

``` r

library(ggplot2)

ggplot(mtcars) +
  geom_point(
    aes(
      x = disp,
      y = hp,
      colour = qsec
    ),
    size = 5
  ) +
  scale_id_continuous(
    cols = iddu(),
    aesthetics = "colour"
  )

```
