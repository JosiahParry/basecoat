# basecoat 0.0.0.9000

* `bc_switch()` builds a switch from a native checkbox with `role="switch"`
  inside a horizontal `field`, with a description section and `sm` size.
* `bc_textarea()` writes a multiline textarea, optionally in a `field` with a
  label and helper text.
* `bc_spinner()` writes the animated `loader-circle` loading icon with a Tailwind
  size.
* `bc_native_select()`, with `bc_native_select_option()` and
  `bc_native_select_group()`, writes a native `<select>` with the Basecoat
  `select` class.
* `bc_pagination()`, with `bc_pagination_item()`, `bc_pagination_ellipsis()`,
  `bc_pagination_previous()` and `bc_pagination_next()`, writes page controls
  from the Button classes.
* `bc_scroll_area()` writes a scrollable region using the Basecoat scrollbar
  classes.
* `bc_label()` writes a `<label>` with the Basecoat `label` class.
* `bc_item()`, with `bc_item_group()`, writes a display or navigation row in a
  semantic `<article>` or `<a>` element.
* `bc_input_group()`, with `bc_input_group_addon()`, writes a group shell for a
  native control with inline or block addons.
* `bc_empty()` writes an empty-state with icon, title, description and actions.
* `bc_button_group()`, with `bc_button_group_separator()`, joins related
  controls into a `button-group` shell.
* `bc_breadcrumb()`, with `bc_breadcrumb_item()` and `bc_breadcrumb_separator()`,
  writes a navigation landmark listing the page hierarchy.
* `bc_alert_dialog()` builds a modal that interrupts the user and expects an
  explicit response, with an optional trigger button and small size.
* `bc_dropdown_menu()`, with `bc_dropdown_item()`, `bc_dropdown_group()`,
  `bc_dropdown_separator()`, `bc_dropdown_checkbox()` and
  `bc_dropdown_radio()`, writes an inline popover menu with shortcut hints,
  indicators and separators.
* `bc_popover()` writes an inline popover with configurable side and align.
* `bc_command()`, with `bc_command_item()`, `bc_command_group()` and
  `bc_command_separator()`, writes the searchable command list, on its own or
  in a command palette dialog.
* `bc_accordion()`, with `bc_accordion_item()`, writes a single-open or
  multi-open accordion from native `<details>` elements.
* `bc_drawer()` writes a native `<dialog>` drawer with a trigger button,
  optional header and pinned footer actions.
* `bc_toast()`, with `bc_toaster()`, writes a category-styled toast stack with
  collapsible actions and a front-end `toaster.toast()` demo.
* `bc_toast_trigger()` builds the docs' HTMX button that fetches a
  server-rendered toast fragment and appends it into a `bc_toaster()`, for
  plumber2/htmxr endpoints.
* `bc_sidebar()`, with `bc_sidebar_group()`, `bc_sidebar_item()`,
  `bc_sidebar_submenu()` and `bc_sidebar_separator()`, writes a fixed
  navigation sidebar beside page content.
* `bc_kbd()` writes a key label in a `kbd` element.
* Basecoat ships inside the package, under `inst/basecoat/`, so a page needs no
  network access. All eight style packs are bundled, along with `base` and every
  component script.
* The bundled stylesheets are built here with Tailwind, against the markup the
  component functions write. Basecoat's published CSS carries only the utilities
  its own source uses, so from those files a pagination row does not lay out and
  a spinner does not turn.
* `bc_deps(theme = )` loads a CSS file of your own after the style pack, for
  overriding Basecoat's tokens with a shadcn/ui theme. `bc_theme()` builds that
  dependency on its own.
* `bc_deps()` returns the stylesheet and scripts as an
  `htmltools::htmlDependency()`, so they land in the page `<head>` and
  de-duplicate across a render. They are served from the copy of `basecoat-css`
  bundled with this package, or from jsDelivr with `source = "cdn"`.
* `bc_init()` re-initialises Basecoat over DOM that was restored rather than
  parsed, which is what an htmx history restore leaves behind.
* `bc_button()`, `bc_badge()` and `bc_alert()` write Basecoat 1.0 markup: a
  root class plus `data-variant` and `data-size`, with the primary and default
  values left as the absence of the attribute.
* `bc_checkbox()` writes the input, its label and any helper text inside a
  Basecoat `field`, and mirrors the disabled and invalid state onto the
  wrapper.
* `bc_field()`, with `bc_fieldset()`, `bc_field_group()` and
  `bc_field_separator()`, writes a form control's label, control and helper
  text, and groups related fields. `bc_checkbox()` and `bc_input()` now build
  their wrappers on it.
* `bc_theme_switcher()` writes an icon button wired to the runtime's
  `window.basecoat.theme.toggle()`, shipping the Tailwind utilities its icon
  swap needs as a head dependency so a page needs no Tailwind build.
* `bc_input()` writes an `<input>` with the Basecoat `input` class and, given
  a label, wraps it in a `field` with helper text.
* `bc_combobox()`, with `bc_combobox_option()`, writes a filtering combobox:
  the text input, the popover listbox and the hidden input, wired together by
  ids off the root id. `choices` takes a plain vector, a named list of vectors
  for groups, or a list of options.
* `bc_avatar()`, with `bc_avatar_group()` and `bc_avatar_badge()`, writes an
  avatar, an overlapping group and a status badge.
* `bc_skeleton()` writes a loading placeholder.
* `bc_progress()` writes a progress bar, keeping the indicator's width and the
  `aria-valuenow` it is read as in step with each other.
* `bc_card()`, with `bc_card_header()`, `bc_card_body()`, `bc_card_footer()`
  and `bc_card_action()`, writes a card.
