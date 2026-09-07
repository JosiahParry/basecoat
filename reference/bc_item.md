# Item

A display or navigation row in a semantic `<article>` or `<a>` element.

## Usage

``` r
bc_item(..., href = NULL, variant = "default", size = "default", role = NULL)

bc_item_group(..., class = NULL)
```

## Arguments

- ...:

  Children: a `<figure>`, a `<section>` of heading and text, and an
  optional `<aside>`, `<header>` or `<footer>`.

- href:

  String. Link target; when given, the item renders as an `<a>`.

- variant:

  String. One of default, outline, muted. `default` writes no attribute.

- size:

  String. One of default, sm, xs. `default` writes no attribute.

- role:

  String. ARIA role, such as `"listitem"` inside an `item-group`.

- class:

  String. Extra classes for the group.

## Value

An `<article>` or `<a>` tag.

## Details

Use `field` for form controls and validation and `item` for content,
actions and navigation rows. List related items in `bc_item_group()`.

## Examples

``` r
bc_item(
  htmltools::tags$section(
    htmltools::tags$h3("Basic Item"),
    htmltools::p("A simple item with title and description.")
  ),
  htmltools::tags$aside(
    bc_button("Action", variant = "outline", size = "sm")
  ),
  variant = "outline"
)
#> <article class="item" data-variant="outline">
#>   <section>
#>     <h3>Basic Item</h3>
#>     <p>A simple item with title and description.</p>
#>   </section>
#>   <aside>
#>     <button type="button" class="btn" data-variant="outline" data-size="sm">Action</button>
#>   </aside>
#> </article>

bc_item(
  htmltools::tags$section(
    htmltools::tags$h3("Visit our documentation"),
    htmltools::p("Get started.")
  ),
  href = "#"
)
#> <a href="#" class="item">
#>   <section>
#>     <h3>Visit our documentation</h3>
#>     <p>Get started.</p>
#>   </section>
#> </a>

bc_item_group(
  bc_item(
    htmltools::tags$section(htmltools::tags$h3("Playground")),
    role = "listitem"
  ),
  bc_item(
    htmltools::tags$section(htmltools::tags$h3("Models")),
    role = "listitem"
  )
)
#> <div class="item-group" role="list">
#>   <article role="listitem" class="item">
#>     <section>
#>       <h3>Playground</h3>
#>     </section>
#>   </article>
#>   <article role="listitem" class="item">
#>     <section>
#>       <h3>Models</h3>
#>     </section>
#>   </article>
#> </div>
```
