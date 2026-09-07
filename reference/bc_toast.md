# Toast

A stack of transient notifications appended to a toaster.

## Usage

``` r
bc_toast(
  title,
  ...,
  description = NULL,
  category = "info",
  duration = NULL,
  action = NULL,
  cancel = NULL,
  icon = NULL
)

bc_toaster(..., id = "toaster", align = "end")

bc_toast_trigger(
  label,
  ...,
  get,
  toaster = "#toaster",
  variant = "outline",
  size = "default"
)
```

## Arguments

- title:

  String. The toast's title.

- ...:

  Content shown under the title before any description.

- description:

  String. A description under the title.

- category:

  String. One of `info`, `success`, `warning` or `error`. Sets styling
  and the default icon.

- duration:

  Number. Milliseconds before the toast closes, or `-1` to keep it open.
  Defaults to `3000`, or `5000` for `error` toasts.

- action:

  A list. Primary action with `label` and `href` or `onclick`.

- cancel:

  A list. Secondary action with `label` and optional `onclick`.

- icon:

  A tag. An icon before the text, replacing the category default.

- id:

  String. The ID for the toaster.

- align:

  String. Placement of the stack. One of `start`, `center` or `end`.

- label:

  String. The trigger button's label.

- get:

  String. URL of the fragment endpoint that returns `bc_toast()` markup.

- toaster:

  String. CSS selector of the `bc_toaster()` to append into.

- variant:

  String. Button variant, defaulting to `outline`.

- size:

  String. Button size, defaulting to `default`.

## Value

A `<div class="toast">` ready to append to a toaster.

A `<div id="...">` of class `toaster` ready to hold toasts.

A `<button>` tag that fetches a server-rendered toast fragment.

## Details

Append the returned markup to a `bc_toaster()`, or create toasts from
JavaScript with `toaster.toast(config)`.

Add one toaster near the end of the page body and append `bc_toast()`
markup to it.

The button fetches the fragment and appends it into the toaster with
`hx-swap = "beforeend"`, so the Toast script mounts it. Serve the
endpoint with htmxr's `htmx` serializer, for example a plumber2 route
returning `bc_toast()`.

## Examples

``` r
bc_toast(
  "Saved",
  description = "Your changes are in place.",
  category = "success",
  cancel = list(label = "Dismiss")
)
#> <div class="toast" role="status" aria-atomic="true" aria-hidden="false" data-category="success" data-duration="3000">
#>   <div class="toast-content">
#>     <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10" /><path d="m9 12 2 2 4-4" /></svg>
#>     <section>
#>       <h2>Saved</h2>
#>       <p>Your changes are in place.</p>
#>     </section>
#>     <footer>
#>       <button type="button" class="btn" data-toast-action>Dismiss</button>
#>     </footer>
#>   </div>
#> </div>

bc_toaster(
  bc_toast("Upload failed", category = "error"),
  align = "start"
)
#> <div id="toaster" class="toaster" data-align="start">
#>   <div class="toast" role="status" aria-atomic="true" aria-hidden="false" data-category="error" data-duration="5000">
#>     <div class="toast-content">
#>       <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10" /><path d="m15 9-6 6" /><path d="m9 9 6 6" /></svg>
#>       <section>
#>         <h2>Upload failed</h2>
#>       </section>
#>     </div>
#>   </div>
#> </div>
bc_toast_trigger(
  "Toast from backend (with HTMX)",
  get = "/fragments/toast/success"
)
#> <button type="button" class="btn" data-variant="outline" hx-get="/fragments/toast/success" hx-trigger="click" hx-select="unset" hx-target="#toaster" hx-swap="beforeend">Toast from backend (with HTMX)</button>
```
