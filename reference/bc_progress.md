# Progress

A bar showing how far along a task is.

## Usage

``` r
bc_progress(value, min = 0, max = 100, label = NULL, ...)
```

## Arguments

- value:

  Number. How far along the task is, between `min` and `max`.

- min, max:

  Number. The ends of the range `value` is measured against.

- label:

  String. What the bar is measuring, for a screen reader. Pass `NULL`
  and an `aria-labelledby` in `...` to point at visible text instead.

- ...:

  Tag attributes and children, passed to
  [`htmltools::div()`](https://rstudio.github.io/htmltools/reference/builder.html).
  Sizing is a caller's job: a skeleton has no dimensions of its own.

## Value

A `<div>` tag.

## Examples

``` r
bc_progress(66, label = "Upload progress")
#> <div class="progress" role="progressbar" aria-label="Upload progress" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100">
#>   <span style="width: 66%"></span>
#> </div>

bc_progress(3, max = 8, label = "Pulls audited")
#> <div class="progress" role="progressbar" aria-label="Pulls audited" aria-valuenow="3" aria-valuemin="0" aria-valuemax="8">
#>   <span style="width: 37.5%"></span>
#> </div>
```
