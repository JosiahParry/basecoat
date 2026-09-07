# Avatar

A small round image with an initials fallback.

## Usage

``` r
bc_avatar(
  ...,
  src = NULL,
  alt = NULL,
  fallback = NULL,
  size = "default",
  badge = NULL
)

bc_avatar_group(..., count = NULL)

bc_avatar_badge(...)
```

## Arguments

- ...:

  Tag attributes and children, passed to
  [`htmltools::span()`](https://rstudio.github.io/htmltools/reference/builder.html).

- src:

  String. The image URL, or `NULL` for initials only.

- alt:

  String. Alt text for the image.

- fallback:

  String. Initials or short text shown when the image is absent.

- size:

  String. One of default, sm, lg. `default` writes no attribute.

- badge:

  A `bc_avatar_badge()`, or `NULL`.

- count:

  Text or an icon shown after the last avatar, or `NULL`.

## Value

A `<span>` tag.

## Examples

``` r
bc_avatar(src = "https://github.com/shadcn.png", alt = "@shadcn", fallback = "CN")
#> <span class="avatar">
#>   <img src="https://github.com/shadcn.png" alt="@shadcn"/>
#>   <span>CN</span>
#> </span>

bc_avatar(fallback = "JP", size = "lg")
#> <span class="avatar" data-size="lg">
#>   <span>JP</span>
#> </span>

bc_avatar_group(
  bc_avatar(fallback = "CN"),
  bc_avatar(fallback = "LR"),
  count = "+3"
)
#> <div class="avatar-group">
#>   <span class="avatar">
#>     <span>CN</span>
#>   </span>
#>   <span class="avatar">
#>     <span>LR</span>
#>   </span>
#>   <span data-count>+3</span>
#> </div>

bc_avatar(
  fallback = "CN",
  badge = bc_avatar_badge(class = "bg-green-600")
)
#> <span class="avatar">
#>   <span>CN</span>
#>   <span class="avatar-badge bg-green-600"></span>
#> </span>
```
