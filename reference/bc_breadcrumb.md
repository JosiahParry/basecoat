# Breadcrumb

A navigation landmark listing the page hierarchy, with separators
inserted between items.

## Usage

``` r
bc_breadcrumb(..., label = "Breadcrumb", separator = "chevron-right")

bc_breadcrumb_item(item, href = NULL, current = FALSE)

bc_breadcrumb_separator(icon = "chevron-right")
```

## Arguments

- ...:

  Items from `bc_breadcrumb_item()` and `bc_breadcrumb_separator()`.
  Separators are added between items automatically.

- label:

  String. The landmark's `aria-label`.

- separator:

  String. Separator icon: `chevron-right` (default) or `dot`.

- item:

  String. The item's label.

- href:

  String. Link target.

- current:

  Bool. Whether this is the current page. Renders a span with
  `aria-current="page"` instead of a link.

- icon:

  String. The separator icon: `chevron-right` or `dot`.

## Value

A `<nav>` tag.

## Examples

``` r
bc_breadcrumb(
  bc_breadcrumb_item("Home", href = "#"),
  bc_breadcrumb_item("Components", href = "#"),
  bc_breadcrumb_item("Breadcrumb", current = TRUE)
)
#> <nav class="breadcrumb" aria-label="Breadcrumb">
#>   <ol>
#>     <li>
#>       <a href="#">Home</a>
#>     </li>
#>     <li aria-hidden="true"><svg data-rtl-flip class="lucide lucide-chevron-right" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m9 18 6-6-6-6" /></svg></li>
#>     <li>
#>       <a href="#">Components</a>
#>     </li>
#>     <li aria-hidden="true"><svg data-rtl-flip class="lucide lucide-chevron-right" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m9 18 6-6-6-6" /></svg></li>
#>     <li>
#>       <span aria-current="page">Breadcrumb</span>
#>     </li>
#>   </ol>
#> </nav>

bc_breadcrumb(
  bc_breadcrumb_item("Docs", href = "#"),
  bc_breadcrumb_item("Theming", current = TRUE),
  separator = "dot"
)
#> <nav class="breadcrumb" aria-label="Breadcrumb">
#>   <ol>
#>     <li>
#>       <a href="#">Docs</a>
#>     </li>
#>     <li aria-hidden="true"><svg class="lucide lucide-dot" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12.1" cy="12.1" r="1" /></svg></li>
#>     <li>
#>       <span aria-current="page">Theming</span>
#>     </li>
#>   </ol>
#> </nav>

bc_breadcrumb_separator("dot")
#> <li aria-hidden="true"><svg class="lucide lucide-dot" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12.1" cy="12.1" r="1" /></svg></li>
```
