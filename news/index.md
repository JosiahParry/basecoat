# Changelog

## basecoat 0.0.0.9000

- `bc_dropdown_menu(trigger =)` takes a whole trigger tag, an avatar or
  anything else, in place of the default button.

- A popover holding another popover no longer clips it. `[data-popover]`
  caps at 18rem and scrolls, which is right for a menu and wrong for a
  filter panel whose selects open inside it.

- `bc_popover(class =)` replaces the default `w-72` rather than being
  appended after it, since two width utilities on one element are
  resolved by stylesheet order and not by the order they are written.

- A popover-based control inside a popover no longer closes it. Opening
  any popover broadcasts `basecoat:popover` and every other one closes
  on it, so a select or combobox shut its own parent.
  `srcjs/nested-popover.js` re-opens an ancestor, registering on
  `basecoat:initialized` so it runs after the closing listener. It is
  the first of this package’s own scripts: `just vendor` copies `srcjs/`
  in beside the vendored ones and
  [`bc_deps()`](https://josiahparry.github.io/basecoat/reference/bc_deps.md)
  loads them last.

- `bc_select(multiple = TRUE)` works. It wrote `data-multiple` on the
  root and the script reads `aria-multiselectable` on the listbox, so a
  multiple select behaved as a single one.

- [`bc_select()`](https://josiahparry.github.io/basecoat/reference/bc_select.md)
  gained `selected`, `close_on_select` and `class`, honours `name`
  rather than writing `<id>-value`, takes option tags and spliced lists
  as well as strings, and renders the chosen labels into the trigger so
  a server rendered control is not blank before its script runs.

- `bc_combobox(auto_highlight = TRUE)` now writes `data-auto-highlight`,
  which the script reads. It was validated and then dropped, so the
  first visible option never activated however the argument was set.

- [`bc_combobox_option()`](https://josiahparry.github.io/basecoat/reference/bc_combobox_option.md)
  keeps the content passed in `...` when `label` is also given, which is
  what the documentation always described: `label` is what the input
  displays, so an option can be an icon beside its name.

- `.table[data-size="sm"]` takes back the vertical padding, the same
  `data-size` the button and the card already answer to. Upstream draws
  a table for a handful of rows, and row height is what stops a long one
  being read in a screen.

- Every style pack imports `srcss/_shared.css` rather than repeating
  what they all add on top of basecoat-css.

- `bc_popover(trigger =)` takes a whole trigger tag, usually a
  [`bc_button()`](https://josiahparry.github.io/basecoat/reference/bc_button.md),
  so a popover can be opened by a small outline button with an icon in
  it. The wiring attributes are added to whatever is passed, and the
  default outline button stays when nothing is.

- Runnable examples ship in `inst/examples/`. `kitchen-sink.R` draws
  every component through each style pack, and `sidebar-app.R` draws an
  app shell with a collapsible sidebar, a toolbar and content. Both are
  standalone, so `source(system.file(...))` is the whole of it.

- Corner radius follows `--radius` everywhere, including the toast
  surface and the badge, which Tailwind would otherwise fix at a literal
  size. A theme asking for square corners now gets them.

- A tweakcn export works as a `bc_deps(theme = )` file unedited. One is
  kept in `inst/examples/tweakcn-theme.css`.

- [`bc_switch()`](https://josiahparry.github.io/basecoat/reference/bc_switch.md)
  builds a switch from a native checkbox with `role="switch"` inside a
  horizontal `field`, with a description section and `sm` size.

- [`bc_textarea()`](https://josiahparry.github.io/basecoat/reference/bc_textarea.md)
  writes a multiline textarea, optionally in a `field` with a label and
  helper text.

- [`bc_spinner()`](https://josiahparry.github.io/basecoat/reference/bc_spinner.md)
  writes the animated `loader-circle` loading icon with a Tailwind size.

- [`bc_native_select()`](https://josiahparry.github.io/basecoat/reference/bc_native_select.md),
  with
  [`bc_native_select_option()`](https://josiahparry.github.io/basecoat/reference/bc_native_select.md)
  and
  [`bc_native_select_group()`](https://josiahparry.github.io/basecoat/reference/bc_native_select.md),
  writes a native `<select>` with the Basecoat `select` class.

- [`bc_pagination()`](https://josiahparry.github.io/basecoat/reference/bc_pagination.md),
  with
  [`bc_pagination_item()`](https://josiahparry.github.io/basecoat/reference/bc_pagination.md),
  [`bc_pagination_ellipsis()`](https://josiahparry.github.io/basecoat/reference/bc_pagination.md),
  [`bc_pagination_previous()`](https://josiahparry.github.io/basecoat/reference/bc_pagination.md)
  and
  [`bc_pagination_next()`](https://josiahparry.github.io/basecoat/reference/bc_pagination.md),
  writes page controls from the Button classes.

- [`bc_scroll_area()`](https://josiahparry.github.io/basecoat/reference/bc_scroll_area.md)
  writes a scrollable region using the Basecoat scrollbar classes.

- [`bc_label()`](https://josiahparry.github.io/basecoat/reference/bc_label.md)
  writes a `<label>` with the Basecoat `label` class.

- [`bc_item()`](https://josiahparry.github.io/basecoat/reference/bc_item.md),
  with
  [`bc_item_group()`](https://josiahparry.github.io/basecoat/reference/bc_item.md),
  writes a display or navigation row in a semantic `<article>` or `<a>`
  element.

- [`bc_input_group()`](https://josiahparry.github.io/basecoat/reference/bc_input_group.md),
  with
  [`bc_input_group_addon()`](https://josiahparry.github.io/basecoat/reference/bc_input_group.md),
  writes a group shell for a native control with inline or block addons.

- [`bc_empty()`](https://josiahparry.github.io/basecoat/reference/bc_empty.md)
  writes an empty-state with icon, title, description and actions.

- [`bc_button_group()`](https://josiahparry.github.io/basecoat/reference/bc_button_group.md),
  with
  [`bc_button_group_separator()`](https://josiahparry.github.io/basecoat/reference/bc_button_group.md),
  joins related controls into a `button-group` shell.

- [`bc_breadcrumb()`](https://josiahparry.github.io/basecoat/reference/bc_breadcrumb.md),
  with
  [`bc_breadcrumb_item()`](https://josiahparry.github.io/basecoat/reference/bc_breadcrumb.md)
  and
  [`bc_breadcrumb_separator()`](https://josiahparry.github.io/basecoat/reference/bc_breadcrumb.md),
  writes a navigation landmark listing the page hierarchy.

- [`bc_alert_dialog()`](https://josiahparry.github.io/basecoat/reference/bc_alert_dialog.md)
  builds a modal that interrupts the user and expects an explicit
  response, with an optional trigger button and small size.

- [`bc_dropdown_menu()`](https://josiahparry.github.io/basecoat/reference/bc_dropdown_menu.md),
  with
  [`bc_dropdown_item()`](https://josiahparry.github.io/basecoat/reference/bc_dropdown_menu.md),
  [`bc_dropdown_group()`](https://josiahparry.github.io/basecoat/reference/bc_dropdown_menu.md),
  [`bc_dropdown_separator()`](https://josiahparry.github.io/basecoat/reference/bc_dropdown_menu.md),
  [`bc_dropdown_checkbox()`](https://josiahparry.github.io/basecoat/reference/bc_dropdown_menu.md)
  and
  [`bc_dropdown_radio()`](https://josiahparry.github.io/basecoat/reference/bc_dropdown_menu.md),
  writes an inline popover menu with shortcut hints, indicators and
  separators.

- [`bc_popover()`](https://josiahparry.github.io/basecoat/reference/bc_popover.md)
  writes an inline popover with configurable side and align.

- [`bc_command()`](https://josiahparry.github.io/basecoat/reference/bc_command.md),
  with
  [`bc_command_item()`](https://josiahparry.github.io/basecoat/reference/bc_command.md),
  [`bc_command_group()`](https://josiahparry.github.io/basecoat/reference/bc_command.md)
  and
  [`bc_command_separator()`](https://josiahparry.github.io/basecoat/reference/bc_command.md),
  writes the searchable command list, on its own or in a command palette
  dialog.

- [`bc_accordion()`](https://josiahparry.github.io/basecoat/reference/bc_accordion.md),
  with
  [`bc_accordion_item()`](https://josiahparry.github.io/basecoat/reference/bc_accordion.md),
  writes a single-open or multi-open accordion from native `<details>`
  elements.

- [`bc_drawer()`](https://josiahparry.github.io/basecoat/reference/bc_drawer.md)
  writes a native `<dialog>` drawer with a trigger button, optional
  header and pinned footer actions.

- [`bc_toast()`](https://josiahparry.github.io/basecoat/reference/bc_toast.md),
  with
  [`bc_toaster()`](https://josiahparry.github.io/basecoat/reference/bc_toast.md),
  writes a category-styled toast stack with collapsible actions and a
  front-end `toaster.toast()` demo.

- [`bc_toast_trigger()`](https://josiahparry.github.io/basecoat/reference/bc_toast.md)
  builds the docs’ HTMX button that fetches a server-rendered toast
  fragment and appends it into a
  [`bc_toaster()`](https://josiahparry.github.io/basecoat/reference/bc_toast.md),
  for plumber2/htmxr endpoints.

- [`bc_sidebar()`](https://josiahparry.github.io/basecoat/reference/bc_sidebar.md),
  with
  [`bc_sidebar_group()`](https://josiahparry.github.io/basecoat/reference/bc_sidebar.md),
  [`bc_sidebar_item()`](https://josiahparry.github.io/basecoat/reference/bc_sidebar.md),
  [`bc_sidebar_submenu()`](https://josiahparry.github.io/basecoat/reference/bc_sidebar.md)
  and
  [`bc_sidebar_separator()`](https://josiahparry.github.io/basecoat/reference/bc_sidebar.md),
  writes a fixed navigation sidebar beside page content.

- [`bc_kbd()`](https://josiahparry.github.io/basecoat/reference/bc_kbd.md)
  writes a key label in a `kbd` element.

- Basecoat ships inside the package, under `inst/basecoat/`, so a page
  needs no network access. All eight style packs are bundled, along with
  `base` and every component script.

- The bundled stylesheets are built here with Tailwind, against the
  markup the component functions write. Basecoat’s published CSS carries
  only the utilities its own source uses, so from those files a
  pagination row does not lay out and a spinner does not turn.

- Printing a component at the console renders it, with the stylesheet
  and scripts attached. The dependency is added at print time, so a page
  built from many components still carries one copy and still honours
  the style its
  [`bc_deps()`](https://josiahparry.github.io/basecoat/reference/bc_deps.md)
  call asked for.

- `bc_deps(theme = )` loads a CSS file of your own after the style pack,
  for overriding Basecoat’s tokens with a shadcn/ui theme.
  [`bc_theme()`](https://josiahparry.github.io/basecoat/reference/bc_theme.md)
  builds that dependency on its own.

- [`bc_deps()`](https://josiahparry.github.io/basecoat/reference/bc_deps.md)
  returns the stylesheet and scripts as an
  [`htmltools::htmlDependency()`](https://rstudio.github.io/htmltools/reference/htmlDependency.html),
  so they land in the page `<head>` and de-duplicate across a render.
  They are served from the copy of `basecoat-css` bundled with this
  package, or from jsDelivr with `source = "cdn"`.

- [`bc_init()`](https://josiahparry.github.io/basecoat/reference/bc_init.md)
  re-initialises Basecoat over DOM that was restored rather than parsed,
  which is what an htmx history restore leaves behind.

- [`bc_button()`](https://josiahparry.github.io/basecoat/reference/bc_button.md),
  [`bc_badge()`](https://josiahparry.github.io/basecoat/reference/bc_badge.md)
  and
  [`bc_alert()`](https://josiahparry.github.io/basecoat/reference/bc_alert.md)
  write Basecoat 1.0 markup: a root class plus `data-variant` and
  `data-size`, with the primary and default values left as the absence
  of the attribute.

- [`bc_checkbox()`](https://josiahparry.github.io/basecoat/reference/bc_checkbox.md)
  writes the input, its label and any helper text inside a Basecoat
  `field`, and mirrors the disabled and invalid state onto the wrapper.

- [`bc_field()`](https://josiahparry.github.io/basecoat/reference/bc_field.md),
  with
  [`bc_fieldset()`](https://josiahparry.github.io/basecoat/reference/bc_field.md),
  [`bc_field_group()`](https://josiahparry.github.io/basecoat/reference/bc_field.md)
  and
  [`bc_field_separator()`](https://josiahparry.github.io/basecoat/reference/bc_field.md),
  writes a form control’s label, control and helper text, and groups
  related fields.
  [`bc_checkbox()`](https://josiahparry.github.io/basecoat/reference/bc_checkbox.md)
  and
  [`bc_input()`](https://josiahparry.github.io/basecoat/reference/bc_input.md)
  now build their wrappers on it.

- [`bc_theme_switcher()`](https://josiahparry.github.io/basecoat/reference/bc_theme_switcher.md)
  writes an icon button wired to the runtime’s
  `window.basecoat.theme.toggle()`, shipping the Tailwind utilities its
  icon swap needs as a head dependency so a page needs no Tailwind
  build.

- [`bc_input()`](https://josiahparry.github.io/basecoat/reference/bc_input.md)
  writes an `<input>` with the Basecoat `input` class and, given a
  label, wraps it in a `field` with helper text.

- [`bc_combobox()`](https://josiahparry.github.io/basecoat/reference/bc_combobox.md),
  with
  [`bc_combobox_option()`](https://josiahparry.github.io/basecoat/reference/bc_combobox_option.md),
  writes a filtering combobox: the text input, the popover listbox and
  the hidden input, wired together by ids off the root id. `choices`
  takes a plain vector, a named list of vectors for groups, or a list of
  options.

- [`bc_avatar()`](https://josiahparry.github.io/basecoat/reference/bc_avatar.md),
  with
  [`bc_avatar_group()`](https://josiahparry.github.io/basecoat/reference/bc_avatar.md)
  and
  [`bc_avatar_badge()`](https://josiahparry.github.io/basecoat/reference/bc_avatar.md),
  writes an avatar, an overlapping group and a status badge.

- [`bc_skeleton()`](https://josiahparry.github.io/basecoat/reference/bc_skeleton.md)
  writes a loading placeholder.

- [`bc_progress()`](https://josiahparry.github.io/basecoat/reference/bc_progress.md)
  writes a progress bar, keeping the indicator’s width and the
  `aria-valuenow` it is read as in step with each other.

- [`bc_card()`](https://josiahparry.github.io/basecoat/reference/bc_card.md),
  with
  [`bc_card_header()`](https://josiahparry.github.io/basecoat/reference/bc_card.md),
  [`bc_card_body()`](https://josiahparry.github.io/basecoat/reference/bc_card.md),
  [`bc_card_footer()`](https://josiahparry.github.io/basecoat/reference/bc_card.md)
  and
  [`bc_card_action()`](https://josiahparry.github.io/basecoat/reference/bc_card.md),
  writes a card.
