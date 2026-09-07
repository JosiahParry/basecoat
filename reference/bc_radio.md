# Radio Input

A single radio input with its label, wrapped in a field.

## Usage

``` r
bc_radio(
  id,
  label,
  ...,
  checked = FALSE,
  disabled = FALSE,
  invalid = FALSE,
  description = NULL,
  name = id
)
```

## Arguments

- id:

  String. The input `id`, and the `for` of its label.

- label:

  String or tag. The label content.

- ...:

  Attributes passed to the `<input>`.

- checked:

  Bool. Whether the radio starts selected.

- disabled:

  Bool. Whether the radio is disabled.

- invalid:

  Bool. Whether to show the invalid state.

- description:

  String or tag. Helper text shown under the label, wired to the input
  with `aria-describedby`.

- name:

  String. The input `name`, defaulting to `id`.

## Value

A `<div>` tag with role="group" containing radio and field.

## Examples

``` r
bc_radio("default", "Default")
#> <div role="group" class="field" data-orientation="horizontal">
#>   <input type="radio" id="default" name="default" class="input"/>
#>   <label for="default">Default</label>
#> </div>

bc_radio("comfortable", "Comfortable", checked = TRUE, disabled = TRUE)
#> <div role="group" class="field" data-orientation="horizontal" data-disabled>
#>   <input type="radio" id="comfortable" name="comfortable" class="input" checked disabled/>
#>   <label for="comfortable">Comfortable</label>
#> </div>
```
