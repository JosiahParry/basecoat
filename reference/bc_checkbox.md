# Checkbox

A checkbox input paired with its label in a Basecoat `field`.

## Usage

``` r
bc_checkbox(
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

## Examples

``` r
bc_checkbox("terms", "Accept terms and conditions")
#> <div role="group" class="field" data-orientation="horizontal">
#>   <input type="checkbox" id="terms" name="terms" class="input"/>
#>   <label for="terms">Accept terms and conditions</label>
#> </div>

bc_checkbox(
  "updates",
  "Email me updates",
  checked = TRUE,
  description = "Unsubscribe at any time."
)
#> <div role="group" class="field" data-orientation="horizontal">
#>   <input type="checkbox" id="updates" name="updates" class="input" checked aria-describedby="updates-description"/>
#>   <section>
#>     <label for="updates">Email me updates</label>
#>     <p id="updates-description">Unsubscribe at any time.</p>
#>   </section>
#> </div>
```
