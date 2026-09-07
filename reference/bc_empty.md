# Empty

A centred empty-state with an optional icon, title, description and
actions.

## Usage

``` r
bc_empty(title = NULL, description = NULL, icon = NULL, actions = NULL, ...)
```

## Arguments

- title:

  String. The heading, rendered as an `<h3>`.

- description:

  String. The helper text, rendered as a `<p>`.

- icon:

  A tag. Content for the `<figure>`, typically an SVG.

- actions:

  A tag or tag list. Content for the `<footer>`.

- ...:

  Attributes for the `<section>`, such as `class`.

## Value

A `<section>` tag.

## Examples

``` r
bc_empty(
  title = "No Projects Yet",
  description = "Create your first project to get started.",
  actions = bc_button("Create Project")
)
#> <section class="empty">
#>   <header>
#>     <h3>No Projects Yet</h3>
#>     <p>Create your first project to get started.</p>
#>   </header>
#>   <footer>
#>     <button type="button" class="btn">Create Project</button>
#>   </footer>
#> </section>

bc_empty(
  title = "404 Not Found",
  description = "The page you are looking for does not exist.",
  actions = bc_input_group(
    htmltools::tags$input(type = "search", placeholder = "Try searching..."),
    htmltools::tags$span(`data-align` = "start", `aria-hidden` = "true")
  ),
  class = "border border-dashed"
)
#> <section class="empty border border-dashed">
#>   <header>
#>     <h3>404 Not Found</h3>
#>     <p>The page you are looking for does not exist.</p>
#>   </header>
#>   <footer>
#>     <div class="input-group">
#>       <input type="search" placeholder="Try searching..."/>
#>       <span data-align="start" aria-hidden="true"></span>
#>     </div>
#>   </footer>
#> </section>
```
