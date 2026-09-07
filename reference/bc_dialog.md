# Dialog

A modal dialog component using native HTML dialog element.

## Usage

``` r
bc_dialog(
  id,
  title = NULL,
  description = NULL,
  content = NULL,
  actions = NULL,
  ...,
  open = FALSE,
  close_on_click = TRUE
)
```

## Arguments

- id:

  String. The dialog's unique ID.

- title:

  String or tag. The dialog title.

- description:

  String or tag. The dialog description.

- content:

  Function or tag. The main dialog content.

- actions:

  Function or tag. Action buttons for the dialog.

- ...:

  Additional attributes passed to the `<dialog>`.

- open:

  Bool. Whether the dialog is initially open.

- close_on_click:

  Bool. Whether to close the dialog when clicking outside.

## Value

A dialog element with proper structure and behavior.

## Examples

``` r
bc_dialog(
  id = "profile-dialog",
  title = "Edit profile",
  description = "Make changes to your profile here.",
  content = htmltools::tagList(
    htmltools::tags$div(class = "grid gap-3",
      htmltools::tags$label(class = "label", `for` = "name", "Name"),
      htmltools::tags$input(class = "input", type = "text", id = "name", value = "Pedro Duarte")
    )
  ),
  actions = htmltools::tagList(
    htmltools::tags$button(
      class = "btn", data_variant = "outline",
      onclick = "this.closest('dialog').close()", "Cancel"
    ),
    htmltools::tags$button(
      class = "btn",
      onclick = "this.closest('dialog').close()", "Save changes"
    )
  )
)
#> <dialog id="profile-dialog" class="dialog" aria-labelledby="profile-dialog-title" aria-describedby="profile-dialog-description" onclick="if (event.target === this) this.close()">
#>   <div class="sm:max-w-sm">
#>     <header>
#>       <h2 id="profile-dialog-title">Edit profile</h2>
#>       <p id="profile-dialog-description">Make changes to your profile here.</p>
#>     </header>
#>     <section>
#>       <div class="grid gap-3">
#>         <label class="label" for="name">Name</label>
#>         <input class="input" type="text" id="name" value="Pedro Duarte"/>
#>       </div>
#>     </section>
#>     <footer>
#>       <button class="btn" data_variant="outline" onclick="this.closest(&#39;dialog&#39;).close()">Cancel</button>
#>       <button class="btn" onclick="this.closest(&#39;dialog&#39;).close()">Save changes</button>
#>     </footer>
#>     <button type="button" class="btn" data_variant="ghost" data_size="icon-sm" aria-label="Close dialog" onclick="this.closest(&#39;dialog&#39;).close()"><svg class="lucide lucide-x" xmlns="http://www.w3.org/2000/svg" width="24"  height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"  stroke-width="2" stroke-linecap="round" stroke-linejoin="round"> <path d="M18 6 6 18"/><path d="m6 6 12 12"/></svg></button>
#>   </div>
#> </dialog>
```
