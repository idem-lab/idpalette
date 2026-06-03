# IDDU palette

An alias for `idpalette(p = "iddu", n, rev)`

## Usage

``` r
iddu(n = NULL, rev = FALSE)
```

## Arguments

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
iddu(5)
```
