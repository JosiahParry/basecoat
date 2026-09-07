# Sidebar

A fixed navigation panel beside the page content.

## Usage

``` r
bc_sidebar(
  id = NULL,
  ...,
  side = "left",
  header = NULL,
  footer = NULL,
  aria_label = "Sidebar navigation",
  initial_open = NULL,
  initial_mobile_open = NULL,
  breakpoint = NULL
)

bc_sidebar_group(title, ..., id = NULL)

bc_sidebar_item(
  label,
  href = NULL,
  ...,
  icon = NULL,
  variant = "default",
  size = "default",
  active = FALSE,
  disabled = FALSE,
  aria_current = FALSE,
  keep_mobile_open = FALSE
)

bc_sidebar_submenu(
  label,
  ...,
  id = NULL,
  icon = NULL,
  variant = "default",
  size = "default",
  active = FALSE,
  keep_mobile_open = FALSE
)

bc_sidebar_separator()
```

## Arguments

- id:

  String or `NULL`. The element `id`. A `NULL` id is generated.

- ...:

  Tag attributes and children, wrapped in `<li>` by `bc_sidebar_group()`
  and `bc_sidebar_submenu()`.

- side:

  String. One of `"left"` or `"right"`. Which viewport side the sidebar
  pins to.

- header:

  Tag. Content for the optional `<header>` region, such as a brand or
  workspace control, or `NULL`.

- footer:

  Tag. Content for the optional `<footer>` region, such as an account
  control, or `NULL`.

- aria_label:

  String. The `aria-label` of the `<nav>` landmark.

- initial_open:

  Bool or `NULL`. Start open on the desktop layout.

- initial_mobile_open:

  Bool or `NULL`. Start open on the mobile overlay.

- breakpoint:

  String or `NULL`. A viewport width below which the sidebar becomes the
  mobile overlay, such as `"48rem"`.

- title:

  String. The group heading, which is also the label of the group.

- label:

  String. Text shown on the control, or in the `summary` of a submenu.

- href:

  String or `NULL`. A destination turns the item into a link, and `NULL`
  into a `<button>`.

- icon:

  Tag. An icon shown before the label, such as an
  [`HTML()`](https://rstudio.github.io/htmltools/reference/HTML.html)
  lucide `<svg>`, or `NULL`.

- variant:

  String. One of default, outline. `default` writes no attribute.

- size:

  String. One of default, sm, lg. `default` writes no attribute.

- active:

  Bool. Mark the control as the active route.

- disabled:

  Bool. Disable the control in its own way: `disabled` on a `<button>`,
  `aria-disabled` on a link.

- aria_current:

  Bool. Write `aria-current = "page"` on a link.

- keep_mobile_open:

  Bool. Keep the mobile sidebar open when this control is clicked.

## Value

An `<aside>` tag.

## Details

Sidebar needs its script, so load it through
[`bc_deps()`](https://josiahparry.github.io/basecoat/reference/bc_deps.md)
with `js = "sidebar"`.

The desktop margin of the sibling `<main>` is Basecoat's own styling;
the toggle button that opens and closes the sidebar is a page control.

## Examples

``` r
bc_sidebar(
  id = "sidebar",
  bc_sidebar_group(
    "Getting started",
    bc_sidebar_item("Playground", href = "#", aria_current = TRUE),
    bc_sidebar_item("Models", href = "#"),
    bc_sidebar_submenu(
      "Settings",
      bc_sidebar_item("General", href = "#"),
      bc_sidebar_item("Limits", href = "#")
    )
  ),
  bc_sidebar_separator(),
  bc_sidebar_group(
    "Account",
    bc_sidebar_item("Billing", href = "#")
  )
)
#> <aside id="sidebar" class="sidebar" data-side="left">
#>   <nav aria-label="Sidebar navigation">
#>     <section class="scrollbar-sm">
#>       <div role="group" aria-labelledby="sidebar-group-79993931">
#>         <h3 id="sidebar-group-79993931">Getting started</h3>
#>         <ul>
#>           <li>
#>             <a href="#" aria-current="page">
#>               <span>Playground</span>
#>             </a>
#>           </li>
#>           <li>
#>             <a href="#">
#>               <span>Models</span>
#>             </a>
#>           </li>
#>           <li>
#>             <details id="sidebar-submenu-75946873">
#>               <summary aria-controls="sidebar-submenu-75946873-content">
#>                 <span>Settings</span>
#>               </summary>
#>               <ul id="sidebar-submenu-75946873-content">
#>                 <li>
#>                   <a href="#">
#>                     <span>General</span>
#>                   </a>
#>                 </li>
#>                 <li>
#>                   <a href="#">
#>                     <span>Limits</span>
#>                   </a>
#>                 </li>
#>               </ul>
#>             </details>
#>           </li>
#>         </ul>
#>       </div>
#>       <hr role="separator"/>
#>       <div role="group" aria-labelledby="sidebar-group-83882721">
#>         <h3 id="sidebar-group-83882721">Account</h3>
#>         <ul>
#>           <li>
#>             <a href="#">
#>               <span>Billing</span>
#>             </a>
#>           </li>
#>         </ul>
#>       </div>
#>     </section>
#>   </nav>
#> </aside>

bs_group <- bc_sidebar_group(
  "Workspace",
  bc_sidebar_item("Dashboard", href = "#")
)

bc_sidebar_item("Profile", href = "/profile", aria_current = TRUE)
#> <a href="/profile" aria-current="page">
#>   <span>Profile</span>
#> </a>

bc_sidebar_submenu(
  "Settings",
  bc_sidebar_item("General", href = "#")
)
#> <details id="sidebar-submenu-99462225">
#>   <summary aria-controls="sidebar-submenu-99462225-content">
#>     <span>Settings</span>
#>   </summary>
#>   <ul id="sidebar-submenu-99462225-content">
#>     <li>
#>       <a href="#">
#>         <span>General</span>
#>       </a>
#>     </li>
#>   </ul>
#> </details>
```
