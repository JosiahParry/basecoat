# Keyboard Key

A single key label in an inline `<kbd>`.

## Usage

``` r
bc_kbd(label, ...)
```

## Arguments

- label:

  String. Text on the key, such as `"⌘K"`.

- ...:

  Tag attributes for the `<kbd>`.

## Value

A `<kbd>` tag.

## Details

Group keys in a flex wrapper with a gap between them. Give a shortcut
beside button text `data-icon = "inline-end"` for spacing.

## Examples

``` r
bc_kbd("⌘K")
#> <kbd class="kbd">⌘K</kbd>

bc_kbd("⏎", `data-icon` = "inline-end")
#> <kbd class="kbd" data-icon="inline-end">⏎</kbd>
```
