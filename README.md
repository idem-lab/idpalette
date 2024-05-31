
<!-- README.md is generated from README.Rmd. Please edit that file -->

# idpalette

<!-- badges: start -->
<!-- badges: end -->

COLOURS FOR EVERYONE *in IDEM, IDDU, ACEFA*

## Installation

You can install the development version of idpalette from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("idem-lab/idpalette")
```

## Main colours

### IDEM

``` r
library(idpalette)
idpalette("idem")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r
idpalette("idem_official")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

### IDDU

``` r
idpalette("iddu")
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

``` r
idpalette("iddu_official")
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

### ACEFA

``` r
idpalette("acefa")
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

``` r
idpalette("acefa_official")
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" />

## Alias functions

``` r
idem()
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" />

``` r
iddu()
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="100%" />

``` r
acefa()
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="100%" />

## Your colours your way

As many or as few colours as you want

``` r
idpalette("iddu", 20)
```

<img src="man/figures/README-unnamed-chunk-11-1.png" width="100%" />

``` r
idpalette("acefa", 2)
```

<img src="man/figures/README-unnamed-chunk-12-1.png" width="100%" />

## Have a go ya mug

``` r
library(ggplot2)

ggplot(
  faithfuld,
   aes(waiting, eruptions)
) +
 geom_raster(
   aes(fill = density)
 ) +
  scale_fill_gradientn(
    colours = idpalette("iddu", 100)
  )
```

<img src="man/figures/README-unnamed-chunk-13-1.png" width="100%" />

``` r
ggplot(mpg) +
  geom_bar(
    aes(
      x = trans,
      fill = class
    )
  ) +
  scale_fill_manual(values = idpalette("idem")) +
  theme_bw()
```

<img src="man/figures/README-unnamed-chunk-14-1.png" width="100%" />
