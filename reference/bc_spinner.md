# Spinner

A loading indicator as the `loader-circle` Lucide icon with the
`animate-spin` utility.

## Usage

``` r
bc_spinner(label = "Loading", size = NULL, ...)
```

## Arguments

- label:

  String. The accessible `aria-label`.

- size:

  String. A Tailwind size utility suffix, e.g. `"4"` for `size-4`.
  `NULL` uses the icon's natural size.

- ...:

  Tag attributes for the `<svg>`.

## Value

An `<svg>` tag.

## Examples

``` r
bc_spinner()
#> <svg aria-label="Loading" role="status" class="animate-spin lucide lucide-loader-circle" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
#>   <path d="M21 12a9 9 0 1 1-6.219-8.56"></path>
#> </svg>

bc_spinner(size = "6")
#> <svg aria-label="Loading" role="status" class="animate-spin lucide lucide-loader-circle size-6" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
#>   <path d="M21 12a9 9 0 1 1-6.219-8.56"></path>
#> </svg>
```
