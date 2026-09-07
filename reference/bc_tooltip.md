# Tooltip

A tooltip component using Basecoat CSS.

## Usage

``` r
bc_tooltip(..., text, side = "top", align = "center")
```

## Arguments

- ...:

  Tag attributes and children for the element with tooltip.

- text:

  String. The tooltip text.

- side:

  String. Position of the tooltip. One of `top`, `bottom`, `left`,
  `right`, `inline-start`, or `inline-end`. Defaults to `top`.

- align:

  String. Alignment of the tooltip. One of `start`, `center`, or `end`.
  Defaults to `center`.

## Value

An HTML element with tooltip attributes.

## Examples

``` r
bc_tooltip("Save", text = "Save your work")
#> <span data-tooltip="Save your work" data-side="top" data-align="center">Save</span>

bc_tooltip("Info", text = "Additional information", side = "bottom")
#> <span data-tooltip="Additional information" data-side="bottom" data-align="center">Info</span>
```
