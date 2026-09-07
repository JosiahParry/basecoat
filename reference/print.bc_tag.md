# Render a component at the console

Prints a component to the viewer with the Basecoat stylesheet and
scripts attached, or writes its HTML when there is nowhere to show it.

## Usage

``` r
# S3 method for class 'bc_tag'
print(x, browse = interactive(), ...)
```

## Arguments

- x:

  A component.

- browse:

  Bool. Show the rendered component rather than its HTML.

- ...:

  Ignored.

## Value

`x`, invisibly.

## Details

The dependency is
[`bc_deps()`](https://josiahparry.github.io/basecoat/reference/bc_deps.md)
with its defaults, so a preview is always the Vega pack. Wrap the
component yourself to see another one.

## Examples

``` r
print(bc_badge("stable"), browse = FALSE)
#> <span class="badge">stable</span>
```
