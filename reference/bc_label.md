# Label

A `<label>` carrying the Basecoat `label` class.

## Usage

``` r
bc_label(...)
```

## Arguments

- ...:

  Content and attributes. A backticked `for` attribute names another
  control.

## Value

A `<label>` tag.

## Examples

``` r
bc_label("Your email address", `for` = "email")
#> <label class="label" for="email">Your email address</label>

bc_label(
  "Accept terms and conditions",
  class = "gap-2",
  htmltools::tags$input(type = "checkbox", class = "input")
)
#> <label class="label gap-2">
#>   Accept terms and conditions
#>   <input type="checkbox" class="input"/>
#> </label>
```
