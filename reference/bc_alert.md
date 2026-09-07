# Alert

A short message with an optional icon, title, body and action.

## Usage

``` r
bc_alert(..., variant = "default")
```

## Arguments

- ...:

  Tag attributes and children. Children are a `<svg>` icon, an `<h2>`
  title, a `<section>` body and a `<footer>` action, in that order. Only
  the title is required.

- variant:

  String. `"destructive"` for an error alert, or `"default"`.

## Value

A `<div>` tag.

## Details

The `<footer>` holds the action element, a button or a link, and
Basecoat aligns it to the inline end.

## Examples

``` r
bc_alert(
  htmltools::h2("Account updated"),
  htmltools::tags$section("Your changes are live.")
)
#> <div class="alert">
#>   <h2>Account updated</h2>
#>   <section>Your changes are live.</section>
#> </div>

bc_alert(
  htmltools::h2("Payment failed"),
  htmltools::tags$section("Check your card and try again."),
  variant = "destructive"
)
#> <div class="alert" data-variant="destructive">
#>   <h2>Payment failed</h2>
#>   <section>Check your card and try again.</section>
#> </div>
```
