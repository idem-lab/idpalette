# IDEM palette

An alias for `idpalette(p = "idem", n, rev)`

## Usage

``` r
idem(n = NULL, rev = FALSE)
```

## Arguments

- n:

  `numeric`. How many colours?

- rev:

  `logical` Reverse the colour order?

## Value

`character` of length `n`

`idpalette` class object of hex colours length `n`. The `idpalette`
class has a print method that will plot the colours in the object, but
it is underneath that a `character` string of length `n` and can be
otherwise treated as such.

## Examples

``` r
idem(7)
```
