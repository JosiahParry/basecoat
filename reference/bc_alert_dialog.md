# Alert Dialog

A modal that interrupts the user and expects an explicit response, built
on a native `<dialog class="alert-dialog">`.

## Usage

``` r
bc_alert_dialog(
  ...,
  id = NULL,
  title = NULL,
  description = NULL,
  icon = NULL,
  cancel = "Cancel",
  confirm = "Continue",
  size = "default",
  open = FALSE,
  trigger = NULL
)
```

## Arguments

- ...:

  Attributes for the `<dialog>`.

- id:

  String. The dialog's `id`.

- title:

  String. The heading, wired via `aria-labelledby`.

- description:

  String or tag. Supporting text, wired via `aria-describedby`.

- icon:

  A tag. Content for a `<figure>` above the heading.

- cancel:

  String or list. The cancel action: a label, or a list with `label` and
  `variant`.

- confirm:

  String or list. The primary action, the same shape as `cancel`.

- size:

  String. `default` or `sm`. `sm` writes `data-size="sm"`.

- open:

  Bool. Whether the dialog starts open.

- trigger:

  String. The trigger button's label, or `NULL` for no button.

## Value

A `<dialog>` tag or, with a `trigger`, a tag list of a button and the
dialog.

## Details

Both actions close the dialog. Omit one by passing `NULL` when the user
must pick a single explicit action. Cancel defaults to the outline
variant and `confirm` to the primary variant.

## Examples

``` r
bc_alert_dialog(
  title = "Are you absolutely sure?",
  description = "This cannot be undone.",
  trigger = "Show Dialog"
)
#> <button type="button" class="btn" data-variant="outline" onclick="document.getElementById(&#39;alert-dialog-82755264&#39;).showModal()">Show Dialog</button>
#> <dialog id="alert-dialog-82755264" class="alert-dialog" aria-labelledby="alert-dialog-82755264-title" aria-describedby="alert-dialog-82755264-description">
#>   <div>
#>     <header>
#>       <h2 id="alert-dialog-82755264-title">Are you absolutely sure?</h2>
#>       <p id="alert-dialog-82755264-description">This cannot be undone.</p>
#>     </header>
#>     <footer>
#>       <button type="button" class="btn" data-variant="outline" onclick="this.closest(&#39;dialog&#39;).close()">Cancel</button>
#>       <button type="button" class="btn" onclick="this.closest(&#39;dialog&#39;).close()">Continue</button>
#>     </footer>
#>   </div>
#> </dialog>

bc_alert_dialog(
  title = "Delete this chat?",
  description = "This cannot be undone.",
  confirm = list(label = "Delete", variant = "destructive"),
  trigger = "Delete Chat"
)
#> <button type="button" class="btn" data-variant="outline" onclick="document.getElementById(&#39;alert-dialog-23967569&#39;).showModal()">Delete Chat</button>
#> <dialog id="alert-dialog-23967569" class="alert-dialog" aria-labelledby="alert-dialog-23967569-title" aria-describedby="alert-dialog-23967569-description">
#>   <div>
#>     <header>
#>       <h2 id="alert-dialog-23967569-title">Delete this chat?</h2>
#>       <p id="alert-dialog-23967569-description">This cannot be undone.</p>
#>     </header>
#>     <footer>
#>       <button type="button" class="btn" data-variant="outline" onclick="this.closest(&#39;dialog&#39;).close()">Cancel</button>
#>       <button type="button" class="btn" data-variant="destructive" onclick="this.closest(&#39;dialog&#39;).close()">Delete</button>
#>     </footer>
#>   </div>
#> </dialog>
```
