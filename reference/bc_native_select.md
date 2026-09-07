# Native Select

A native `<select>` carrying the Basecoat `select` class, optionally
wrapped with a label in a `field`.

## Usage

``` r
bc_native_select(
  ...,
  label = NULL,
  id = NULL,
  aria_label = NULL,
  placeholder = NULL,
  size = "default",
  description = NULL,
  name = id,
  disabled = FALSE,
  invalid = FALSE
)

bc_native_select_option(value, ..., label = NULL)

bc_native_select_group(label, ...)
```

## Arguments

- ...:

  The placeholder option and the `<option>` or `<optgroup>` children.

- label:

  String or tag. A label for the field, an option, or an optgroup
  heading.

- id:

  String. The select `id`, required when `label` is given.

- aria_label:

  String. Accessible name for a labelless select.

- placeholder:

  String. Text of the leading "select an option" option.

- size:

  String. One of `default` or `sm`. `sm` writes `data-size="sm"`.

- description:

  String or tag. Helper text shown under the select, wired to it with
  `aria-describedby`.

- name:

  String. The input `name`, defaulting to `id`.

- disabled:

  Bool. Whether the input is disabled.

- invalid:

  Bool. Whether to show the invalid state.

- value:

  String. The option's value.

## Value

A `<select>` tag or, with a `label`, a `<div>` tag.

## Details

A select needs an accessible name: give a `label` or an `aria_label`.
Options come from `bc_native_select_option()` and groups from
`bc_native_select_group()`.

## Examples

``` r
bc_native_select(
  bc_native_select_option("Apple", value = "apple"),
  bc_native_select_option("Banana", value = "banana"),
  bc_native_select_option("Blueberry", value = "blueberry"),
  aria_label = "Fruit",
  placeholder = "Select a fruit"
)
#> <select class="select" aria-label="Fruit">
#>   <option value="">Select a fruit</option>
#>   <option value="apple">Apple</option>
#>   <option value="banana">Banana</option>
#>   <option value="blueberry">Blueberry</option>
#> </select>

bc_native_select(
  bc_native_select_group(
    "Vegetables",
    bc_native_select_option("Carrot", value = "carrot"),
    bc_native_select_option("Potato", value = "potato")
  ),
  id = "food",
  label = "Food",
  placeholder = "Select food"
)
#> <div role="group" class="field">
#>   <label for="food">Food</label>
#>   <select id="food" name="food" class="select">
#>     <option value="">Select food</option>
#>     <optgroup label="Vegetables">
#>       <option value="carrot">Carrot</option>
#>       <option value="potato">Potato</option>
#>     </optgroup>
#>   </select>
#> </div>
```
