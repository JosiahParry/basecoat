# Combobox

A searchable select with an editable text input and a hidden value
input.

## Usage

``` r
bc_combobox(
  id,
  ...,
  placeholder = "",
  name = id,
  selected = "",
  empty = "No items found.",
  multiple = FALSE,
  auto_highlight = FALSE,
  disabled = FALSE,
  class = NULL
)
```

## Arguments

- id:

  String. The ID for the combobox root. Input, popover and listbox IDs
  derive from it.

- ...:

  For `bc_combobox()`, option tags from
  [`bc_combobox_option()`](https://josiahparry.github.io/basecoat/reference/bc_combobox_option.md)
  and
  [`bc_combobox_group()`](https://josiahparry.github.io/basecoat/reference/bc_combobox_group.md),
  or plain character values that become simple options.

- placeholder:

  String. Text shown while empty.

- name:

  String. The `name` of the hidden value input.

- selected:

  String or character vector. Initial value, or values in multiple mode.

- empty:

  String. Text shown when filtering finds no options.

- multiple:

  Bool. Whether the listbox accepts several selections.

- auto_highlight:

  Bool. Whether the first visible option activates when the list opens
  or filters.

- disabled:

  Bool. Whether the input is disabled.

- class:

  Vector of class names merged onto the combobox root.

## Value

A `<div>` tag of class `combobox`.

## Details

The visible input filters the list; the hidden input stores the
submitted value as a string in single mode and as a JSON array in
multiple mode.

## See also

[`bc_combobox_option()`](https://josiahparry.github.io/basecoat/reference/bc_combobox_option.md),
[`bc_combobox_group()`](https://josiahparry.github.io/basecoat/reference/bc_combobox_group.md),
[`bc_combobox_separator()`](https://josiahparry.github.io/basecoat/reference/bc_combobox_separator.md)

## Examples

``` r
bc_combobox(
  "framework",
  bc_combobox_option("Next.js"),
  bc_combobox_option("SvelteKit"),
  bc_combobox_option("Remix"),
  placeholder = "Select a framework",
  class = "w-60"
)
#> <div class="combobox w-60" id="framework">
#>   <input type="text" role="combobox" id="framework-input" placeholder="Select a framework" autocomplete="off" autocorrect="off" spellcheck="false" aria-autocomplete="list" aria-expanded="false" aria-controls="framework-listbox"/>
#>   <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="combobox-trigger-icon"><path d="m6 9 6 6 6-6" /></svg>
#>   <div id="framework-popover" data-popover aria-hidden="true">
#>     <div role="listbox" id="framework-listbox" aria-orientation="vertical" data-empty="No items found.">
#>       <div role="option" data-value="Next.js">Next.js</div>
#>       <div role="option" data-value="SvelteKit">SvelteKit</div>
#>       <div role="option" data-value="Remix">Remix</div>
#>     </div>
#>   </div>
#>   <input type="hidden" name="framework" value=""/>
#> </div>
```
