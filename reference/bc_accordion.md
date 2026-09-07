# Accordion

A vertically stacked set of collapsible sections built on native
`<details>` elements.

## Usage

``` r
bc_accordion(..., id = NULL, multiple = FALSE, class = NULL)

bc_accordion_item(title, ..., open = FALSE, disabled = FALSE, id = NULL)
```

## Arguments

- ...:

  Accordion items. Tags pass through and lists are passed to
  `bc_accordion_item()` with `title`, `content`, `open` and `disabled`.

- id:

  String. The ID for the accordion root.

- multiple:

  Bool. Allow more than one item open at a time. Off by default, so
  opening one item closes the others.

- class:

  String. Extra classes for the accordion root.

- title:

  String. The item's trigger, always visible.

- open:

  Bool. Whether the item starts open.

- disabled:

  Bool. Whether the item can be toggled.

## Value

A `<section class="accordion">` of `<details>` items.

## Details

The script enforces single-item behavior and stops disabled items from
toggling.

## Examples

``` r
bc_accordion(
  bc_accordion_item("First section", "First section content.", open = TRUE),
  bc_accordion_item("Second section", "Second section content.")
)
#> <section id="accordion-75646955" class="accordion">
#>   <details open>
#>     <summary>
#>       First section
#>       <svg class="lucide lucide-chevron-down" xmlns="http://www.w3.org/2000/svg" width="24"  height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"  stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6" /></svg>
#>     </summary>
#>     <section>First section content.</section>
#>   </details>
#>   <details>
#>     <summary>
#>       Second section
#>       <svg class="lucide lucide-chevron-down" xmlns="http://www.w3.org/2000/svg" width="24"  height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"  stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6" /></svg>
#>     </summary>
#>     <section>Second section content.</section>
#>   </details>
#> </section>
```
