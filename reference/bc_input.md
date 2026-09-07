# Input

An `<input>` carrying the Basecoat `input` class, optionally wrapped
with a label in a `field`.

## Usage

``` r
bc_input(
  ...,
  label = NULL,
  id = NULL,
  type = "text",
  placeholder = NULL,
  description = NULL,
  value = NULL,
  name = id,
  required = FALSE,
  disabled = FALSE,
  invalid = FALSE
)
```

## Arguments

- ...:

  Tag attributes for the `<input>`.

- label:

  String or tag. The label content.

- id:

  String. The input `id`, required when a `label` is given.

- type:

  String. The `type` attribute, `"text"` by default.

- placeholder:

  String. Placeholder text.

- description:

  String or tag. Helper text shown under the input, wired to it with
  `aria-describedby`.

- value:

  String. The initial value.

- name:

  String. The input `name`, defaulting to `id`.

- required:

  Bool. Whether the input is required.

- disabled:

  Bool. Whether the input is disabled.

- invalid:

  Bool. Whether to show the invalid state.

## Value

An `<input>` tag or, with a `label`, a `<div>` tag.

## Examples

``` r
bc_input(type = "email", placeholder = "Email")
#> <input class="input" type="email" placeholder="Email"/>

bc_input(
  id = "email",
  label = "Email",
  type = "email",
  placeholder = "m@example.com",
  description = "Enter your email address."
)
#> <div role="group" class="field">
#>   <label for="email">Email</label>
#>   <input id="email" name="email" class="input" type="email" placeholder="m@example.com" aria-describedby="email-description"/>
#>   <p id="email-description">Enter your email address.</p>
#> </div>
```
