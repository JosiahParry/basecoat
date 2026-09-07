# Command

A searchable command palette or standalone command list.

## Usage

``` r
bc_command(
  ...,
  id = NULL,
  placeholder = "Type a command or search...",
  empty = "No results found.",
  label = "Command menu",
  dialog = FALSE,
  trigger = NULL,
  manual = FALSE
)

bc_command_item(
  label,
  ...,
  shortcut = NULL,
  icon = NULL,
  disabled = FALSE,
  href = NULL,
  filter = NULL,
  keywords = NULL,
  force = FALSE,
  keep_open = FALSE,
  checked = FALSE
)

bc_command_group(title, ...)

bc_command_separator()
```

## Arguments

- ...:

  Command content. Strings become command items, tags pass through and
  lists are passed to `bc_command_item()`. Build the rest with
  `bc_command_group()` and `bc_command_separator()`.

- id:

  String. The ID for the command root, or the dialog when
  `dialog = TRUE`.

- placeholder:

  String. Placeholder text for the filter input.

- empty:

  String. Message shown when nothing matches the filter.

- label:

  String. The item's label, used as the filter text.

- dialog:

  Bool. Wrap the command in a `<dialog class="command-dialog">` with a
  trigger button.

- trigger:

  String. The trigger button's label when `dialog = TRUE`.

- manual:

  Bool. Add `data-filter="manual"` when the app owns filtering.

- shortcut:

  String. A shortcut hint shown at the inline end.

- icon:

  A tag. An icon before the label.

- disabled:

  Bool. Mark the item as disabled.

- href:

  String. When given, the item is an `<a role="menuitem">`.

- filter:

  String. Overrides the text matched against the input.

- keywords:

  String. Extra terms matched against the input.

- force:

  Bool. Keep the item visible whatever the filter.

- keep_open:

  Bool. Keep the command open when the item is chosen.

- checked:

  Bool. Show the item's indicator.

- title:

  String. A group heading shown above its items.

## Value

A `<div class="command">`, or a trigger button and `<dialog>` pair.

## Details

The script filters `role="menuitem"` items by the input and manages
keyboard selection.

## Examples

``` r
bc_command(
  bc_command_group("Suggestions", "Calendar", "Search Emoji"),
  bc_command_separator(),
  bc_command_item("Profile", shortcut = "CmdP")
)
#> <div class="command border" aria-label="Command menu" id="command-62319258">
#>   <header>
#>     <svg class="lucide lucide-search-icon lucide-search" xmlns="http://www.w3.org/2000/svg"  width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"  stroke-width="2" stroke-linecap="round" stroke-linejoin="round"> <circle cx="11" cy="11" r="8" /><path d="m21 21-4.3-4.3" /></svg>
#>     <input type="text" id="command-62319258-input" placeholder="Type a command or search..." autocomplete="off" autocorrect="off" spellcheck="false" aria-autocomplete="list" role="combobox" aria-expanded="true" aria-controls="command-62319258-menu"/>
#>   </header>
#>   <div role="menu" id="command-62319258-menu" aria-orientation="vertical" data-empty="No results found.">
#>     <div role="group" aria-labelledby="command-label-13327364">
#>       <span role="heading" id="command-label-13327364">Suggestions</span>
#>       <div role="menuitem" data-filter="Calendar">Calendar</div>
#>       <div role="menuitem" data-filter="Search Emoji">Search Emoji</div>
#>     </div>
#>     <hr role="separator"/>
#>     <div role="menuitem" data-filter="Profile">
#>       <span>Profile</span>
#>       <span data-shortcut>CmdP</span>
#>     </div>
#>   </div>
#> </div>
```
