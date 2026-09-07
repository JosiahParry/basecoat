# Skeleton

A block that stands in for content that has not arrived.

## Usage

``` r
bc_skeleton(...)
```

## Arguments

- ...:

  Tag attributes and children, passed to
  [`htmltools::div()`](https://rstudio.github.io/htmltools/reference/builder.html).
  Sizing is a caller's job: a skeleton has no dimensions of its own.

## Value

A `<div>` tag.

## Examples

``` r
bc_skeleton(class = "h-4 w-full")
#> <div class="skeleton h-4 w-full"></div>

bc_skeleton(class = "size-10 shrink-0 rounded-full")
#> <div class="skeleton size-10 shrink-0 rounded-full"></div>
```
