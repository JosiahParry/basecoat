# Button

A `<button>` carrying the Basecoat `btn` class.

## Usage

``` r
bc_button(..., variant = "primary", size = "default", type = "button")
```

## Arguments

- ...:

  Tag attributes and children for the `<button>`. The label is a child.

- variant:

  String. One of primary, secondary, outline, ghost, link, destructive.
  `primary` writes no attribute.

- size:

  String. One of default, xs, sm, lg, icon, icon-xs, icon-sm, icon-lg.
  `default` writes no attribute.

- type:

  String. The `type` attribute, `"button"` unless the button submits a
  form.

## Value

A `<button>` tag.

## Details

An icon size needs an accessible name: pass `"aria-label"` in `...`. An
inline icon beside text takes `data-icon = "inline-start"` or
`"inline-end"` for spacing.

## Examples

``` r
bc_button("Save")
#> <button type="button" class="btn">Save</button>

bc_button("Delete", variant = "destructive")
#> <button type="button" class="btn" data-variant="destructive">Delete</button>

bc_button("Snooze", variant = "outline", size = "sm")
#> <button type="button" class="btn" data-variant="outline" data-size="sm">Snooze</button>
```
