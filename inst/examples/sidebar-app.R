# A complete application shell: a collapsible navigation sidebar, a `<main>`
# that takes the desktop margin, and the controls that open and close it.
#
#   source(system.file("examples", "sidebar-app.R", package = "basecoat"))
#
# Below the breakpoint the sidebar becomes an overlay that closes when a link
# inside it is clicked. Above it, the toggle in the toolbar collapses the panel
# and `<main>` reclaims the width. Both are the Sidebar script's doing, so the
# page asks for it through `bc_deps(js = )`.
#
#   sidebar_app()                       # the default pack
#   sidebar_app("rhea")                 # another pack
#   sidebar_app("vega", theme = "~/theme.css")   # under your own tokens

library(basecoat)
library(htmltools)

# Lucide icons, written inline so the page pulls nothing over the network.
lucide <- function(name, paths) {
  HTML(paste0(
    '<svg class="lucide lucide-',
    name,
    '" xmlns="http://www.w3.org/2000/svg" ',
    'width="24" height="24" viewBox="0 0 24 24" fill="none" ',
    'stroke="currentColor" stroke-width="2" stroke-linecap="round" ',
    'stroke-linejoin="round">',
    paths,
    "</svg>"
  ))
}

icons <- list(
  panel = lucide(
    "panel-left",
    paste0(
      '<rect width="18" height="18" x="3" y="3" rx="2" />',
      '<path d="M9 3v18" />'
    )
  ),
  terminal = lucide(
    "square-terminal",
    paste0(
      '<path d="m7 11 2-2-2-2" /><path d="M11 13h4" />',
      '<rect width="18" height="18" x="3" y="3" rx="2" ry="2" />'
    )
  ),
  bot = lucide(
    "bot",
    paste0(
      '<path d="M12 8V4H8" /><rect width="16" height="12" x="4" y="8" rx="2" />',
      '<path d="M2 14h2" /><path d="M20 14h2" />',
      '<path d="M15 13v2" /><path d="M9 13v2" />'
    )
  ),
  book = lucide(
    "book-open",
    paste0(
      '<path d="M12 7v14" />',
      '<path d="M3 18a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 ',
      '4-4h5a1 1 0 0 1 1 1v13a1 1 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z" />'
    )
  ),
  settings = lucide(
    "settings",
    paste0(
      '<path d="M9.671 4.136a2.34 2.34 0 0 1 4.659 0 2.34 2.34 0 0 0 3.319 ',
      '1.915 2.34 2.34 0 0 1 2.33 4.033 2.34 2.34 0 0 0 0 3.831 2.34 2.34 0 0 ',
      '1-2.33 4.033 2.34 2.34 0 0 0-3.319 1.915 2.34 2.34 0 0 1-4.659 0 2.34 ',
      '2.34 0 0 0-3.32-1.915 2.34 2.34 0 0 1-2.33-4.033 2.34 2.34 0 0 0 ',
      '0-3.831A2.34 2.34 0 0 1 6.35 6.051a2.34 2.34 0 0 0 3.319-1.915" />',
      '<circle cx="12" cy="12" r="3" />'
    )
  ),
  life = lucide(
    "life-buoy",
    paste0(
      '<circle cx="12" cy="12" r="10" /><path d="m4.93 4.93 4.24 4.24" />',
      '<path d="m14.83 9.17 4.24-4.24" /><path d="m14.83 14.83 4.24 4.24" />',
      '<path d="m9.17 14.83-4.24 4.24" /><circle cx="12" cy="12" r="4" />'
    )
  )
)

# The id the toggle reaches for. The Sidebar script puts `open()`, `close()` and
# `toggle()` on the element itself, so a plain onclick is the whole wiring.
sidebar_id <- "app-sidebar"

sidebar_toggle <- function(label = "Toggle sidebar") {
  bc_button(
    icons$panel,
    variant = "ghost",
    size = "icon",
    `aria-label` = label,
    `aria-controls` = sidebar_id,
    onclick = paste0("document.getElementById('", sidebar_id, "')?.toggle()")
  )
}

# Branding and a workspace switcher, pinned above the scrolling nav.
app_header <- bc_dropdown_menu(
  bc_dropdown_group(
    "Workspaces",
    bc_dropdown_radio("Acme Inc", checked = TRUE),
    bc_dropdown_radio("Globex")
  ),
  bc_dropdown_separator(),
  bc_dropdown_item("Add workspace", shortcut = "N"),
  trigger_label = "Acme Inc",
  variant = "ghost",
  align = "start"
)

# The account control, pinned below it. Opening upwards keeps it on screen.
app_footer <- bc_dropdown_menu(
  bc_dropdown_group(
    "Signed in",
    bc_dropdown_item("Account", shortcut = "A"),
    bc_dropdown_item("Billing", shortcut = "B")
  ),
  bc_dropdown_separator(),
  bc_dropdown_item("Log out", variant = "destructive"),
  trigger_label = "Ada Lovelace",
  variant = "ghost",
  side = "top",
  align = "start"
)

app_sidebar <- bc_sidebar(
  id = sidebar_id,
  breakpoint = "48rem",
  header = app_header,
  footer = app_footer,
  bc_sidebar_group(
    "Platform",
    bc_sidebar_item(
      "Playground",
      href = "#playground",
      icon = icons$terminal,
      aria_current = TRUE
    ),
    bc_sidebar_item("Models", href = "#models", icon = icons$bot),
    bc_sidebar_submenu(
      "Settings",
      bc_sidebar_item("General", href = "#general"),
      bc_sidebar_item("Team", href = "#team"),
      bc_sidebar_item("Limits", href = "#limits"),
      icon = icons$settings
    )
  ),
  bc_sidebar_separator(),
  bc_sidebar_group(
    "Resources",
    bc_sidebar_item("Documentation", href = "#docs", icon = icons$book),
    bc_sidebar_item("Support", href = "#support", icon = icons$life),
    # This one opens a panel rather than navigating, so the mobile overlay has
    # no reason to close behind it.
    bc_sidebar_item(
      "Changelog",
      href = "#changelog",
      keep_mobile_open = TRUE
    )
  )
)

# The toolbar above the page content. The toggle lives here rather than in the
# sidebar so it stays reachable once the panel is collapsed.
app_toolbar <- tags$header(
  class = "flex items-center gap-2 border-b p-3",
  sidebar_toggle(),
  bc_breadcrumb(
    bc_breadcrumb_item("Acme Inc", href = "#"),
    bc_breadcrumb_item("Platform", href = "#"),
    bc_breadcrumb_item("Playground", current = TRUE)
  ),
  div(class = "ml-auto flex items-center gap-2", bc_theme_switcher())
)

app_content <- div(
  class = "flex flex-col gap-6 p-6",
  tags$h1(class = "text-2xl font-semibold", "Playground"),
  div(
    class = "grid gap-4 sm:grid-cols-2",
    bc_card(
      bc_card_header(
        tags$h2("Production deploy"),
        tags$p("v1.4.2, 3m 12s"),
        bc_card_action(bc_badge("passed", variant = "secondary"))
      ),
      bc_card_body(tags$p("All 128 checks green.")),
      bc_card_footer(bc_button("Audit", variant = "outline", size = "sm"))
    ),
    bc_card(
      bc_card_header(
        tags$h2("Usage"),
        tags$p("Requests this month")
      ),
      bc_card_body(bc_progress(66, label = "Monthly quota")),
      bc_card_footer(tags$p("660k of 1M."))
    )
  ),
  bc_item_group(
    bc_item(
      tags$section(
        tags$h3("Collapse the sidebar"),
        tags$p("The toolbar toggle calls toggle() on the aside element.")
      ),
      tags$aside(sidebar_toggle("Collapse from the content area")),
      variant = "outline",
      role = "listitem"
    ),
    bc_item(
      tags$section(
        tags$h3("Narrow the window"),
        tags$p("Below 48rem the sidebar becomes an overlay.")
      ),
      variant = "outline",
      role = "listitem"
    )
  )
)

sidebar_app <- function(
  style = NULL,
  theme = NULL,
  file = tempfile("basecoat-sidebar-", fileext = ".html"),
  browse = TRUE
) {
  page <- tagList(
    app_sidebar,
    # The desktop margin lands on the sibling immediately after the sidebar, so
    # `<main>` has to come next.
    tags$main(app_toolbar, app_content)
  )

  save_html(
    attachDependencies(
      page,
      bc_deps(
        style = style,
        js = c("sidebar", "dropdown-menu", "popover"),
        theme = theme
      )
    ),
    file,
    background = "var(--background)"
  )

  # A page under `tempfile()` lives only as long as the session, so pass `file`
  # to keep one, and `browse = FALSE` when nothing should open.
  if (browse) {
    utils::browseURL(file)
  }

  invisible(file)
}

sidebar_app()
