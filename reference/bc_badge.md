# Badge

A small inline status label.

## Usage

``` r
bc_badge(..., variant = "default")
```

## Arguments

- ...:

  Tag attributes and children, passed to
  [`htmltools::span()`](https://rstudio.github.io/htmltools/reference/builder.html).
  The text is a child.

- variant:

  String. One of default, secondary, destructive, outline, ghost.
  `default` writes no attribute.

## Value

A `<span>` tag.

## Examples

``` r
bc_badge("stable")
#> <span class="badge">stable</span>

bc_badge("wipe", variant = "destructive")
#> <span class="badge" data-variant="destructive">wipe</span>
```
