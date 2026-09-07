# Card

A titled container, built from a header, a body and a footer.

## Usage

``` r
bc_card(...)

bc_card_header(...)

bc_card_body(...)

bc_card_footer(...)

bc_card_action(...)
```

## Arguments

- ...:

  Tag attributes and children. Pass `data-size = "sm"` to `bc_card()`
  for a denser card.

## Value

A tag.

## Details

The parts are ordered by where they are written, not by an argument: an
`<img>` before `bc_card_header()` is a card with a cover image.

`bc_card_header()` takes a heading, an optional `<p>` description and an
optional `bc_card_action()`, in that order.

## Examples

``` r
bc_card(
  bc_card_header(
    htmltools::h2("Production deploy"),
    htmltools::p("v1.4.2, 3m 12s"),
    bc_card_action(bc_badge("passed"))
  ),
  bc_card_body(htmltools::p("All 128 checks green.")),
  bc_card_footer(htmltools::p("Deployed just now."))
)
#> <div class="card">
#>   <header>
#>     <h2>Production deploy</h2>
#>     <p>v1.4.2, 3m 12s</p>
#>     <div class="card-action">
#>       <span class="badge">passed</span>
#>     </div>
#>   </header>
#>   <section>
#>     <p>All 128 checks green.</p>
#>   </section>
#>   <footer>
#>     <p>Deployed just now.</p>
#>   </footer>
#> </div>
```
