# Button Group

Joins related controls into a single `button-group` shell.

## Usage

``` r
bc_button_group(..., orientation = "default", aria_label = NULL, class = NULL)

bc_button_group_separator()
```

## Arguments

- ...:

  The group's children: controls and `bc_button_group_separator()`.

- orientation:

  String. One of `default` or `vertical`. `default` writes no attribute.

- aria_label:

  String. Accessible name for the group.

- class:

  String. Extra classes for the shell.

## Value

A `<div>` tag.

## Details

Wrap controls in
[`bc_button()`](https://josiahparry.github.io/basecoat/reference/bc_button.md)
or another styled control. A `<span>`, `<label>` or `<output>` child is
a non-interactive segment, an `<hr>` is a divider, and a `<div>` is left
unstyled for custom layouts.

## Examples

``` r
bc_button_group(
  bc_button("Archive", variant = "outline"),
  bc_button("Report", variant = "outline"),
  aria_label = "Message actions"
)
#> <div role="group" class="button-group" aria-label="Message actions">
#>   <button type="button" class="btn" data-variant="outline">Archive</button>
#>   <button type="button" class="btn" data-variant="outline">Report</button>
#> </div>

bc_button_group(
  bc_button("Copy", variant = "secondary", size = "sm"),
  bc_button_group_separator(),
  bc_button("Paste", variant = "secondary", size = "sm")
)
#> <div role="group" class="button-group">
#>   <button type="button" class="btn" data-variant="secondary" data-size="sm">Copy</button>
#>   <hr role="separator"/>
#>   <button type="button" class="btn" data-variant="secondary" data-size="sm">Paste</button>
#> </div>
```
