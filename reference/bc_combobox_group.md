# Combobox group

A headed set of options separated from the rest of the list.

## Usage

``` r
bc_combobox_group(title, ...)
```

## Arguments

- title:

  String. The group heading.

- ...:

  Option tags to group under the heading.

## Value

A `<div>` tag of class `option group`.

## Examples

``` r
bc_combobox_group(
  "Americas",
  bc_combobox_option("New York"),
  bc_combobox_option("Chicago")
)
#> <div role="group" aria-labelledby="combobox-group-65214861">
#>   <div role="heading" id="combobox-group-65214861">Americas</div>
#>   <div role="option" data-value="New York">New York</div>
#>   <div role="option" data-value="Chicago">Chicago</div>
#> </div>
```
