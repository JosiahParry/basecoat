# Dialog Trigger Button

A button that opens a dialog.

## Usage

``` r
bc_dialog_trigger(dialog_id, ...)
```

## Arguments

- dialog_id:

  String. The ID of the dialog to open.

- ...:

  Additional attributes passed to the `<button>`.

## Value

A button that opens the specified dialog.

## Examples

``` r
bc_dialog_trigger("profile-dialog", "Open Dialog")
#> <button type="button" onclick="document.getElementById(&#39;profile-dialog&#39;).showModal()">Open Dialog</button>
```
