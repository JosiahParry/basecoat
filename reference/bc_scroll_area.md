# Scroll Area

A scrollable region carrying the Basecoat scrollbar or `scrollbar-sm`
class.

## Usage

``` r
bc_scroll_area(..., size = "default", overflow = "auto", class = NULL)
```

## Arguments

- ...:

  Content and attributes for the scroll container.

- size:

  String. `default` for `scrollbar`, `sm` for `scrollbar-sm`.

- overflow:

  String. The overflow utility: `auto`, `x` or `y`.

- class:

  String. Extra classes, such as a height (`h-72`).

## Value

A `<div>` tag.

## Examples

``` r
bc_scroll_area(
  htmltools::tags$p("Content that scrolls."),
  class = "h-72"
)
#> <div class="scrollbar overflow-auto h-72">
#>   <p>Content that scrolls.</p>
#> </div>
```
