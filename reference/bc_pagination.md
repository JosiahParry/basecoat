# Pagination

A set of page controls built from the Button classes in a `nav`
landmark.

## Usage

``` r
bc_pagination(..., label = "pagination")

bc_pagination_item(item, href = "#", current = FALSE, ...)

bc_pagination_ellipsis()

bc_pagination_previous(label = "Previous", href = "#")

bc_pagination_next(label = "Next", href = "#")
```

## Arguments

- ...:

  The pagination items as `<li>` tags, from the item helpers.

- label:

  String. The navigation landmark's `aria-label`.

- item:

  String. The page label.

- href:

  String. The link target.

- current:

  Bool. Whether this is the current page. Renders as the outline
  variant.

## Value

A `<nav>` tag.

## Examples

``` r
bc_pagination(
  bc_pagination_previous(),
  bc_pagination_item("1", href = "#"),
  bc_pagination_item("2", href = "#", current = TRUE),
  bc_pagination_item("3", href = "#"),
  bc_pagination_ellipsis(),
  bc_pagination_next()
)
#> <nav role="navigation" aria-label="pagination" class="mx-auto flex w-full justify-center">
#>   <ul class="flex flex-row items-center gap-1">
#>     <li>
#>       <a href="#" class="btn" data-variant="ghost">
#>         <svg class="lucide lucide-chevron-left" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m15 18-6-6 6-6" /></svg>
#>         <span>Previous</span>
#>       </a>
#>     </li>
#>     <li>
#>       <a href="#" class="btn" data-variant="ghost" data-size="icon">1</a>
#>     </li>
#>     <li>
#>       <a href="#" class="btn" data-variant="outline" data-size="icon">2</a>
#>     </li>
#>     <li>
#>       <a href="#" class="btn" data-variant="ghost" data-size="icon">3</a>
#>     </li>
#>     <li>
#>       <div class="size-9 flex items-center justify-center"><svg class="size-4 shrink-0 lucide lucide-ellipsis" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="1" /><circle cx="19" cy="12" r="1" /><circle cx="5" cy="12" r="1" /></svg></div>
#>     </li>
#>     <li>
#>       <a href="#" class="btn" data-variant="ghost">
#>         <span>Next</span>
#>         <svg class="lucide lucide-chevron-right" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m9 18 6-6-6-6" /></svg>
#>       </a>
#>     </li>
#>   </ul>
#> </nav>
```
