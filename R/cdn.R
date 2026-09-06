# The CDN binding. Basecoat ships one stylesheet per style pack and one script
# per interactive component, so choosing a style and a set of components is the
# whole of the configuration.

# The version of basecoat-css these bindings are written against. The markup a
# component function emits is only promised to match this release.
bc_version <- "1.0.2"

# The style packs, as named on the installation page. `vega` is the default and
# is served under an unsuffixed file name as well, which is what is asked for.
bc_styles <- c(
  "vega",
  "nova",
  "maia",
  "lyra",
  "mira",
  "luma",
  "sera",
  "rhea"
)

# The components that need JavaScript. Every other component is CSS only, so
# asking for none of these is a page with no script at all.
bc_scripts <- c(
  "accordion",
  "combobox",
  "command",
  "drawer",
  "dropdown-menu",
  "popover",
  "range",
  "select",
  "sidebar",
  "tabs",
  "toast"
)

#' Basecoat from a CDN
#'
#' The Basecoat stylesheet and scripts as an [htmltools::htmlDependency()],
#' served from jsDelivr and placed in the page `<head>`.
#'
#' @param style String. A style pack: one of `r toString(bc_styles)`. Each is a
#'   standalone bundle, so a page loads exactly one.
#' @param js `TRUE` for every component's script, `FALSE` for none, or a
#'   character vector of component names to load beside the runtime.
#' @param version String. The `basecoat-css` release to serve.
#' @return An [htmltools::htmlDependency()].
#' @details
#' Attach it with [htmltools::attachDependencies()], or return it in a
#' [htmltools::tagList()] beside your markup. Call it once per page: a second
#' call with another style is de-duplicated by name and only one wins.
#'
#' Basecoat is authored for Tailwind. Load any other Tailwind build before this
#' dependency, never after, or that build resets borders and inputs to their
#' own defaults.
#' @export
#' @examples
#' bc_cdn()
#'
#' bc_cdn(style = "maia", js = c("select", "toast"))
bc_cdn <- function(style = "vega", js = TRUE, version = bc_version) {
  style <- arg_match(style, bc_styles)
  check_string(version, allow_empty = FALSE)

  scripts <- lapply(bc_script_files(js), function(file) {
    list(src = paste0("js/", file), defer = NA)
  })

  htmltools::htmlDependency(
    name = "basecoat",
    version = version,
    src = c(
      href = paste0("https://cdn.jsdelivr.net/npm/basecoat-css@", version, "/dist")
    ),
    stylesheet = paste0("basecoat-", style, ".cdn.min.css"),
    script = if (length(scripts)) scripts
  )
}

# Which script files answer a `js` argument. The runtime has to come first when
# individual components are asked for, and is already inside the all-in-one.
bc_script_files <- function(js, call = caller_env()) {
  if (isTRUE(js)) {
    return("all.min.js")
  }

  if (isFALSE(js)) {
    return(character())
  }

  js <- arg_match(js, bc_scripts, multiple = TRUE, error_call = call)

  c("basecoat.min.js", paste0(js, ".min.js"))
}

#' Re-initialise Basecoat after a swap
#'
#' Basecoat initialises its components on load and when new DOM is inserted, so
#' this is only wanted where markup is restored from a cache rather than parsed.
#'
#' @param force Bool. Destroy and rebuild components that are already
#'   initialised, which also clears open menus and focus.
#' @return A `<script>` tag.
#' @details
#' An htmx history restore is the case this exists for: the browser puts back
#' DOM that was already initialised, and only `force` rebuilds it.
#' @export
#' @examples
#' bc_init(force = TRUE)
bc_init <- function(force = FALSE) {
  check_bool(force)

  tags$script(HTML(paste0(
    "window.basecoat.initAll(",
    if (force) "{ force: true }",
    ")"
  )))
}
