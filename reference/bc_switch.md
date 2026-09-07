# Switch

A binary toggle built on a native checkbox with `role="switch"`, paired
with its label in a horizontal `field`.

## Usage

``` r
bc_switch(
  id,
  label,
  ...,
  size = "default",
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

  Tag attributes for the `<input>`.

- size:

  String. One of `default` or `sm`. `sm` writes `data-size="sm"`.

- checked:

  Bool. Whether the box starts ticked.

- disabled:

  Bool. Whether the box is disabled.

- invalid:

  Bool. Whether to show the invalid state.

- description:

  String or tag. Helper text shown under the label, wired to the input
  with `aria-describedby`.

- name:

  String. The input `name`, defaulting to `id`.

## Value

A `<div>` tag.

## Details

A field wrapper with the switch first makes room for a `<section>` of
label and description beside the control.

## Examples

``` r
bc_switch("airplane-mode", "Airplane Mode")
#> <div role="group" class="field" data-orientation="horizontal">
#>   <input type="checkbox" role="switch" id="airplane-mode" name="airplane-mode" class="input"/>
#>   <label for="airplane-mode">Airplane Mode</label>
#> </div>

bc_switch(
  "focus-mode",
  "Share across devices",
  checked = TRUE,
  description = "Focus is shared across devices."
)
#> <div role="group" class="field" data-orientation="horizontal">
#>   <input type="checkbox" role="switch" id="focus-mode" name="focus-mode" class="input" checked aria-describedby="focus-mode-description"/>
#>   <section>
#>     <label for="focus-mode">Share across devices</label>
#>     <p id="focus-mode-description">Focus is shared across devices.</p>
#>   </section>
#> </div>
```
