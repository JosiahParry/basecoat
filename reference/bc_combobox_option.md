# Combobox option

A selectable entry in a combobox listbox.

## Usage

``` r
bc_combobox_option(value, ..., label = NULL, filter = NULL)
```

## Arguments

- value:

  String. The submitted value. When `label` is `NULL`, the rendered text
  too.

- ...:

  Content of the option, used when `label` is `NULL`.

- label:

  String. Display text. Defaults to the value when `NULL`.

- filter:

  String. Extra text searched beyond the label.

## Value

A `<div>` tag of class `option` role.

## Details

Options can carry custom HTML in `...`. Give `data-label` when the input
should display different text than the rendered content.

## Examples

``` r
bc_combobox_option("Next.js")
#> <div role="option" data-value="Next.js">Next.js</div>

bc_combobox_option(
  "argentina",
  label = "Argentina",
  filter = "Argentina South America"
)
#> <div role="option" data-value="argentina" data-label="Argentina" data-filter="Argentina South America">Argentina</div>
```
