# Field

A single form control wrapped with its label and helper text.

## Usage

``` r
bc_field(..., orientation = "default", disabled = FALSE, invalid = FALSE)

bc_fieldset(..., legend = NULL, description = NULL)

bc_field_group(...)

bc_field_separator()
```

## Arguments

- ...:

  Tag attributes and children for the `<div>`.

- orientation:

  String. One of default, horizontal, responsive. `default` writes no
  attribute.

- disabled:

  Bool. Whether to mark the field as disabled.

- invalid:

  Bool. Whether to show the invalid state.

- legend:

  String or tag. The group's heading, as a `<legend>`.

- description:

  String or tag. Shown under the legend.

## Value

A tag.

## Details

Children are the `<label>`, the control and an optional `<section>` or
`<p>` of helper text, in document order. A horizontal field takes the
control, or a `<section>` of label and text, first so the CSS places the
text beside the control.

## Examples

``` r
bc_field(
  htmltools::tags$label(`for` = "username", "Username"),
  htmltools::tags$input(id = "username", type = "text"),
  htmltools::tags$p("Choose a unique username for your account.")
)
#> <div role="group" class="field">
#>   <label for="username">Username</label>
#>   <input id="username" type="text"/>
#>   <p>Choose a unique username for your account.</p>
#> </div>

bc_field(
  htmltools::tags$input(id = "sync", type = "checkbox", role = "switch"),
  htmltools::tags$label(`for` = "sync", "Sync folders"),
  orientation = "horizontal"
)
#> <div role="group" class="field" data-orientation="horizontal">
#>   <input id="sync" type="checkbox" role="switch"/>
#>   <label for="sync">Sync folders</label>
#> </div>

bc_fieldset(
  legend = "Address Information",
  description = "We need your address to deliver your order.",
  bc_field(
    htmltools::tags$label(`for` = "street", "Street"),
    htmltools::tags$input(id = "street", type = "text")
  )
)
#> <fieldset class="fieldset">
#>   <legend>Address Information</legend>
#>   <p>We need your address to deliver your order.</p>
#>   <div role="group" class="field">
#>     <label for="street">Street</label>
#>     <input id="street" type="text"/>
#>   </div>
#> </fieldset>

bc_field_group(
  `aria-label` = "Account credentials",
  bc_field(
    htmltools::tags$label(`for` = "email", "Email"),
    htmltools::tags$input(id = "email", type = "email")
  ),
  bc_field_separator(),
  bc_field(
    htmltools::tags$label(`for` = "password", "Password"),
    htmltools::tags$input(id = "password", type = "password")
  )
)
#> <div role="group" class="fieldset" aria-label="Account credentials">
#>   <div role="group" class="field">
#>     <label for="email">Email</label>
#>     <input id="email" type="email"/>
#>   </div>
#>   <div class="field-separator">
#>     <hr role="separator"/>
#>   </div>
#>   <div role="group" class="field">
#>     <label for="password">Password</label>
#>     <input id="password" type="password"/>
#>   </div>
#> </div>
```
