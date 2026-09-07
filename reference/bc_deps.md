# Basecoat assets

The Basecoat stylesheet and scripts as an
[`htmltools::htmlDependency()`](https://rstudio.github.io/htmltools/reference/htmlDependency.html),
placed in the page `<head>`. Served from the files bundled with this
package by default, or from jsDelivr.

## Usage

``` r
bc_deps(
  style = NULL,
  js = TRUE,
  theme = NULL,
  source = c("local", "cdn"),
  version = bc_version
)
```

## Arguments

- style:

  String or `NULL`. A style pack, one of vega, nova, maia, lyra, mira,
  luma, sera, rhea, or `"base"` for tokens and structure with no visual
  style at all.

- js:

  `TRUE` for every component's script, `FALSE` for none, or a character
  vector of component names to load beside the runtime.

- theme:

  String or `NULL`. Path to a CSS file of your own, loaded after the
  style pack so its tokens win. See
  [`bc_theme()`](https://josiahparry.github.io/basecoat/reference/bc_theme.md).

- source:

  String. `"local"` to serve the bundled files, or `"cdn"` to serve
  Basecoat's own from jsDelivr, which lays out several components wrong.

- version:

  String. The `basecoat-css` release to serve. Only 1.0.2 is bundled, so
  any other release needs `source = "cdn"`.

## Value

An
[`htmltools::htmlDependency()`](https://rstudio.github.io/htmltools/reference/htmlDependency.html),
or a list of two when `theme` is given.

## Details

Attach it with
[`htmltools::attachDependencies()`](https://rstudio.github.io/htmltools/reference/htmlDependencies.html),
or return it in a
[`htmltools::tagList()`](https://rstudio.github.io/htmltools/reference/tagList.html)
beside your markup. Call it once per page: a second call with another
style is de-duplicated by name and only one wins.

`theme` is the whole of custom theming, and it is returned after the
stylesheet rather than beside it so its token values win.

A style pack still owns component visuals, so a theme changes tokens
rather than layout. Every corner radius follows `--radius`, including
the toast surface and the badge, which Tailwind would otherwise fix at a
literal size.

`style = "base"` drops the visual style entirely, leaving tokens and
component structure. That is a starting point for writing a style pack,
not a way to theme one, since it carries no surfaces, padding or type
scale.

Basecoat is authored for Tailwind. Load any other Tailwind build before
this dependency, never after, or that build resets borders and inputs to
their own defaults.

## Why not the CDN

Basecoat is authored for Tailwind, and its published stylesheets carry
only the utilities Basecoat's own source uses. Several components are
documented in plain Tailwind, so from those files a pagination row does
not lay out and a spinner does not turn. The bundled stylesheets are
built here against the markup these functions write, which is why
`source = "local"` is the default.

## Examples

``` r
bc_deps()
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    :List of 2
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/all.min.js"
#>   .. ..$ defer: logi NA
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/nested-popover.js"
#>   .. ..$ defer: logi NA
#>  $ stylesheet: chr "basecoat-vega.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"

bc_deps(style = "maia", js = c("select", "toast"))
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    :List of 4
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/basecoat.min.js"
#>   .. ..$ defer: logi NA
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/select.min.js"
#>   .. ..$ defer: logi NA
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/toast.min.js"
#>   .. ..$ defer: logi NA
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/nested-popover.js"
#>   .. ..$ defer: logi NA
#>  $ stylesheet: chr "basecoat-maia.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"

bc_deps(source = "cdn")
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ href: chr "https://cdn.jsdelivr.net/npm/basecoat-css@1.0.2/dist"
#>  $ meta      : NULL
#>  $ script    :List of 2
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/all.min.js"
#>   .. ..$ defer: logi NA
#>   ..$ :List of 2
#>   .. ..$ src  : chr "js/nested-popover.js"
#>   .. ..$ defer: logi NA
#>  $ stylesheet: chr "basecoat-vega.cdn.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : NULL
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"

css <- tempfile(fileext = ".css")
writeLines(":root { --primary: oklch(0.54 0.16 320); }", css)

htmltools::attachDependencies(bc_button("Save"), bc_deps(theme = css))
#> <button type="button" class="btn">Save</button>
```
