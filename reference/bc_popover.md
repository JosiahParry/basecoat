# Popover

An inline popover of content beside its trigger.

## Usage

``` r
bc_popover(
  ...,
  id = NULL,
  trigger_label = "Open popover",
  trigger = NULL,
  side = "bottom",
  align = "center",
  class = NULL
)
```

## Arguments

- ...:

  Content for the popover.

- id:

  String. The ID for the popover wrapper.

- trigger_label:

  String or tag. The trigger button's label.

- trigger:

  A tag. A whole trigger, usually a
  [`bc_button()`](https://josiahparry.github.io/basecoat/reference/bc_button.md),
  in place of the default outline button. The wiring attributes are
  added to it.

- side:

  String. Placement of the popover. One of `top`, `right`, `bottom`,
  `left`, `inline-start` or `inline-end`.

- align:

  String. Alignment of the popover on its side. One of `start`, `center`
  or `end`.

- class:

  Vector of class names for the popover content, replacing the default
  `w-72`.

## Value

A `<div class="popover">` with a trigger button and the popover content.

## Details

The script toggles the popover's `data-popover` content next to its
trigger.

## Examples

``` r
bc_popover(
  htmltools::tags$header(
    htmltools::tags$h4("Title"),
    htmltools::tags$p("A short description.")
  )
)
#> <div class="popover" id="popover-92331754">
#>   <button type="button" class="btn" data-variant="outline" id="popover-92331754-trigger" aria-expanded="false" aria-controls="popover-92331754-popover">Open popover</button>
#>   <div id="popover-92331754-popover" data-popover aria-hidden="true" data-align="center" class="w-72">
#>     <header>
#>       <h4>Title</h4>
#>       <p>A short description.</p>
#>     </header>
#>   </div>
#> </div>
```
