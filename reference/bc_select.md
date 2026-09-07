# Select

A dropdown of options, with a hidden input carrying what was chosen.

## Usage

``` r
bc_select(
  ...,
  placeholder = NULL,
  name = NULL,
  id = NULL,
  selected = NULL,
  disabled = FALSE,
  invalid = FALSE,
  multiple = FALSE,
  close_on_select = !multiple,
  class = NULL
)
```

## Arguments

- ...:

  Options. A
  [`bc_select_option()`](https://josiahparry.github.io/basecoat/reference/bc_select_option.md),
  a plain string, or a tag with `role = "option"` for one that carries
  its own markup.

- placeholder:

  String. Text shown while nothing is chosen.

- name:

  String. The `name` of the hidden input, defaulting to `id`.

- id:

  String. The ID for the select root. Trigger, popover and listbox IDs
  derive from it.

- selected:

  String or character vector. Initial value, or values in multiple mode.

- disabled:

  Bool. Whether the select is disabled.

- invalid:

  Bool. Whether to show the invalid state.

- multiple:

  Bool. Whether the listbox accepts several selections.

- close_on_select:

  Bool. Whether choosing closes the popover. Defaults to `TRUE` for a
  single select and `FALSE` for a multiple one.

- class:

  Vector of class names merged onto the trigger button, which is where
  the control's width is set.

## Value

A `<div>` tag of class `select`.

## Details

The hidden input holds the chosen value as a string in single mode and
as a JSON array in multiple mode.

## See also

[`bc_select_option()`](https://josiahparry.github.io/basecoat/reference/bc_select_option.md)

## Examples

``` r
bc_select(
  "Apple",
  "Banana",
  "Blueberry",
  placeholder = "Select a fruit"
)
#> <div class="select" id="select-13716786" data-placeholder="Select a fruit" data-close-on-select="true">
#>   <button type="button" class="w-[180px]" id="select-13716786-trigger" aria-haspopup="listbox" aria-expanded="false" aria-controls="select-13716786-listbox">
#>     <span class="truncate">Select a fruit</span>
#>     <svg class="lucide lucide-chevron-down text-muted-foreground opacity-50 shrink-0" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6"/></svg>
#>   </button>
#>   <div id="select-13716786-popover" data-popover aria-hidden="true">
#>     <div role="listbox" id="select-13716786-listbox" aria-orientation="vertical" aria-labelledby="select-13716786-trigger">
#>       <div role="option" data-value="Apple">Apple</div>
#>       <div role="option" data-value="Banana">Banana</div>
#>       <div role="option" data-value="Blueberry">Blueberry</div>
#>     </div>
#>   </div>
#>   <input type="hidden" name="select-13716786" value=""/>
#> </div>

bc_select(
  bc_select_option("light", "Light"),
  bc_select_option("dark", "Dark"),
  bc_select_option("system", "System"),
  placeholder = "Theme",
  name = "appearance",
  selected = "dark"
)
#> <div class="select" id="select-14265346" data-placeholder="Theme" data-close-on-select="true">
#>   <button type="button" class="w-[180px]" id="select-14265346-trigger" aria-haspopup="listbox" aria-expanded="false" aria-controls="select-14265346-listbox">
#>     <span class="truncate">dark</span>
#>     <svg class="lucide lucide-chevron-down text-muted-foreground opacity-50 shrink-0" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6"/></svg>
#>   </button>
#>   <div id="select-14265346-popover" data-popover aria-hidden="true">
#>     <div role="listbox" id="select-14265346-listbox" aria-orientation="vertical" aria-labelledby="select-14265346-trigger">
#>       <div role="option" data-value="light">Light</div>
#>       <div role="option" data-value="dark" aria-selected="true">Dark</div>
#>       <div role="option" data-value="system">System</div>
#>     </div>
#>   </div>
#>   <input type="hidden" name="appearance" value="dark"/>
#> </div>

bc_select(
  "tank",
  "healer",
  "dps",
  placeholder = "Any role",
  multiple = TRUE,
  selected = c("tank", "healer"),
  class = "w-full"
)
#> <div class="select" id="select-29532543" data-placeholder="Any role" data-close-on-select="false">
#>   <button type="button" class="w-full" id="select-29532543-trigger" aria-haspopup="listbox" aria-expanded="false" aria-controls="select-29532543-listbox">
#>     <span class="truncate">tank, healer</span>
#>     <svg class="lucide lucide-chevron-down text-muted-foreground opacity-50 shrink-0" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6"/></svg>
#>   </button>
#>   <div id="select-29532543-popover" data-popover aria-hidden="true">
#>     <div role="listbox" id="select-29532543-listbox" aria-orientation="vertical" aria-labelledby="select-29532543-trigger" aria-multiselectable="true">
#>       <div role="option" data-value="tank" aria-selected="true">tank</div>
#>       <div role="option" data-value="healer" aria-selected="true">healer</div>
#>       <div role="option" data-value="dps">dps</div>
#>     </div>
#>   </div>
#>   <input type="hidden" name="select-29532543" value="[&quot;tank&quot;, &quot;healer&quot;]"/>
#> </div>
```
