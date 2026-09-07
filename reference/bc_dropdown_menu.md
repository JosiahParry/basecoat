# Dropdown Menu

A menu of actions in an inline popover beside its trigger.

## Usage

``` r
bc_dropdown_menu(
  ...,
  id = NULL,
  trigger_label = "Menu",
  trigger = NULL,
  variant = "outline",
  side = NULL,
  align = NULL,
  class = NULL
)

bc_dropdown_item(
  label,
  ...,
  shortcut = NULL,
  icon = NULL,
  disabled = FALSE,
  variant = NULL
)

bc_dropdown_group(title = NULL, ..., heading_id = NULL)

bc_dropdown_separator()

bc_dropdown_checkbox(
  label,
  ...,
  checked = FALSE,
  disabled = FALSE,
  icon = NULL
)

bc_dropdown_radio(label, ..., checked = FALSE, disabled = FALSE, icon = NULL)
```

## Arguments

- ...:

  Menu content. Strings become menu items, tags pass through and lists
  are passed to `bc_dropdown_item()`. Build the rest with
  `bc_dropdown_group()`, `bc_dropdown_separator()`,
  `bc_dropdown_checkbox()` and `bc_dropdown_radio()`.

- id:

  String. The ID for the dropdown wrapper.

- trigger_label:

  String or tag. The trigger button's label.

- trigger:

  A tag. A whole trigger, an avatar or anything else, in place of the
  default button. The wiring attributes are added to it.

- variant:

  String. The trigger's button variant.

- side:

  String. Placement of the menu beside the trigger. One of `top`,
  `right`, `bottom`, `left`, `inline-start` or `inline-end`.

- align:

  String. Alignment of the menu on its side. One of `start`, `center` or
  `end`.

- class:

  String. Extra classes for the popover.

- label:

  String. The item's label.

- shortcut:

  String. A shortcut hint shown at the inline end.

- icon:

  A tag. An icon before the label.

- disabled:

  Bool. Mark the item as disabled.

- title:

  String. A group heading shown above its items.

- heading_id:

  String. The heading's `id` and the group's `aria-labelledby`.

- checked:

  Bool. Whether the item starts checked.

## Value

A `<div class="dropdown-menu">` with a trigger button and the menu
popover.

## Details

The script binds menu item navigation under the `.dropdown-menu`
wrapper.

## Examples

``` r
bc_dropdown_menu(
  bc_dropdown_group(
    "My Account",
    bc_dropdown_item("Profile", shortcut = "CtrP"),
    bc_dropdown_item("Settings", shortcut = "CtrS")
  ),
  bc_dropdown_separator(),
  bc_dropdown_item("Log out")
)
#> <div class="dropdown-menu" id="dropdown-menu-11769267">
#>   <button type="button" class="btn" data-variant="outline" id="dropdown-menu-11769267-trigger" aria-haspopup="menu" aria-controls="dropdown-menu-11769267-menu" aria-expanded="false">Menu</button>
#>   <div id="dropdown-menu-11769267-popover" data-popover aria-hidden="true" class="min-w-32">
#>     <div role="menu" id="dropdown-menu-11769267-menu" aria-labelledby="dropdown-menu-11769267-trigger">
#>       <div role="group" aria-labelledby="dropdown-label-65731516">
#>         <div role="heading" id="dropdown-label-65731516">My Account</div>
#>         <div role="menuitem">
#>           <span>Profile</span>
#>           <kbd>CtrP</kbd>
#>         </div>
#>         <div role="menuitem">
#>           <span>Settings</span>
#>           <kbd>CtrS</kbd>
#>         </div>
#>       </div>
#>       <hr role="separator"/>
#>       <div role="menuitem">Log out</div>
#>     </div>
#>   </div>
#> </div>

bc_dropdown_menu(
  bc_dropdown_group(
    "Panels",
    bc_dropdown_checkbox("Status bar", checked = TRUE),
    bc_dropdown_checkbox("Activity bar"),
    bc_dropdown_checkbox("Terminal", disabled = TRUE)
  ),
  bc_dropdown_separator(),
  bc_dropdown_group(
    "Position",
    bc_dropdown_radio("Top", checked = TRUE),
    bc_dropdown_radio("Bottom")
  ),
  trigger_label = "View"
)
#> <div class="dropdown-menu" id="dropdown-menu-11257147">
#>   <button type="button" class="btn" data-variant="outline" id="dropdown-menu-11257147-trigger" aria-haspopup="menu" aria-controls="dropdown-menu-11257147-menu" aria-expanded="false">View</button>
#>   <div id="dropdown-menu-11257147-popover" data-popover aria-hidden="true" class="min-w-32">
#>     <div role="menu" id="dropdown-menu-11257147-menu" aria-labelledby="dropdown-menu-11257147-trigger">
#>       <div role="group" aria-labelledby="dropdown-label-78289396">
#>         <div role="heading" id="dropdown-label-78289396">Panels</div>
#>         <div role="menuitemcheckbox" aria-checked="true">
#>           <span data-indicator><svg class="lucide lucide-check" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5" /></svg></span>
#>           Status bar
#>         </div>
#>         <div role="menuitemcheckbox" aria-checked="false">
#>           <span data-indicator><svg class="lucide lucide-check" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5" /></svg></span>
#>           Activity bar
#>         </div>
#>         <div role="menuitemcheckbox" aria-checked="false" aria-disabled="true">
#>           <span data-indicator><svg class="lucide lucide-check" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5" /></svg></span>
#>           Terminal
#>         </div>
#>       </div>
#>       <hr role="separator"/>
#>       <div role="group" aria-labelledby="dropdown-label-95327442">
#>         <div role="heading" id="dropdown-label-95327442">Position</div>
#>         <div role="menuitemradio" aria-checked="true">
#>           <span data-indicator><svg class="lucide lucide-check" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5" /></svg></span>
#>           Top
#>         </div>
#>         <div role="menuitemradio" aria-checked="false">
#>           <span data-indicator><svg class="lucide lucide-check" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5" /></svg></span>
#>           Bottom
#>         </div>
#>       </div>
#>     </div>
#>   </div>
#> </div>
```
