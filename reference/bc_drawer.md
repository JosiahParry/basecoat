# Drawer

A modal side panel built on a native `<dialog>` element.

## Usage

``` r
bc_drawer(
  ...,
  id = NULL,
  side = "bottom",
  trigger = "Open Drawer",
  title = NULL,
  description = NULL,
  actions = NULL,
  class = NULL
)
```

## Arguments

- ...:

  Content for the drawer body.

- id:

  String. The ID for the dialog.

- side:

  String. The viewport side the drawer slides from. One of `bottom`
  (default), `top`, `right` or `left`.

- trigger:

  String. The trigger button's label, or `NULL` for no button.

- title:

  String. A header title shown above the body.

- description:

  String. A header description under the title.

- actions:

  A tag or tag list. Footer actions pinned below the body.

- class:

  String. Extra classes for the dialog.

## Value

A trigger button and a `<dialog class="drawer">`, or just the dialog
when `trigger = NULL` and no opener is wanted.

## Details

The trigger calls the native `HTMLDialogElement.showModal()`. The script
closes the drawer on backdrop click and waits for the exit animation.

## Examples

``` r
bc_drawer(
  "Use this panel for content that needs the full viewport width.",
  title = "Move Goal",
  description = "Set your daily activity goal.",
  actions = htmltools::tags$button(
    class = "btn",
    onclick = "this.closest('dialog').close()",
    "Submit"
  )
)
#> <button type="button" class="btn" data-variant="outline" onclick="document.getElementById(&#39;drawer-17663928&#39;).showModal()">Open Drawer</button>
#> <dialog id="drawer-17663928" class="drawer" aria-labelledby="drawer-17663928-title" aria-describedby="drawer-17663928-description">
#>   <article>
#>     <header class="mx-auto w-full max-w-sm">
#>       <h2 id="drawer-17663928-title">Move Goal</h2>
#>       <p id="drawer-17663928-description">Set your daily activity goal.</p>
#>     </header>
#>     <section class="px-4">Use this panel for content that needs the full viewport width.</section>
#>     <footer class="mx-auto w-full max-w-sm">
#>       <button class="btn" onclick="this.closest(&#39;dialog&#39;).close()">Submit</button>
#>     </footer>
#>   </article>
#> </dialog>
```
