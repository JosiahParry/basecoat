# A custom theme stylesheet

A CSS file of your own as an
[`htmltools::htmlDependency()`](https://rstudio.github.io/htmltools/reference/htmlDependency.html).
Reach for `bc_deps(theme = )` instead, which orders it against the style
pack for you.

## Usage

``` r
bc_theme(path)
```

## Arguments

- path:

  String. Path to a `.css` file defining Basecoat's tokens.

## Value

An
[`htmltools::htmlDependency()`](https://rstudio.github.io/htmltools/reference/htmlDependency.html).

## Details

This is the piece on its own, for a page whose
[`bc_deps()`](https://josiahparry.github.io/basecoat/reference/bc_deps.md)
call lives somewhere else. It has to render after that dependency for
its tokens to win.

The style pack still owns component visuals, so the file only restates
the tokens it changes. Basecoat reads shadcn/ui token names, such as
`--background`, `--foreground`, `--primary`, `--border` and `--ring`,
from `:root` and from `.dark`. A Tailwind `@theme` block is ignored by
the browser and is not needed, since the bundled stylesheet already maps
those tokens.

The dependency is named after the file, so two different files both
load.

## Themes from tweakcn

A tweakcn export works unedited. Its `:root` and `.dark` blocks are the
whole of the theme, and they are plain CSS, so a browser reads them and
their unlayered declarations beat the style pack's.

The rest of the file is Tailwind build syntax that a browser ignores:
`@import "tailwindcss"`, `@custom-variant`, `@theme inline` and any
`@layer base` block of `@apply` rules. Nothing is lost by that. The
bundled stylesheet already maps `--color-primary` to `--primary` and its
siblings, and already paints the page background, so the `@theme inline`
and `@layer base` blocks would only restate what is there. Deleting
them, and the `@import` line that resolves to nothing, saves the browser
a failed request.

Two things do need doing by hand. A theme that names a web font, such as
`--font-sans: DM Sans`, has to load it, since the file only names it.
And `letter-spacing` from `--tracking-normal` is applied by an `@apply`
rule, so restate it as `body { letter-spacing: var(--tracking-normal) }`
to keep it.

## Examples

``` r
css <- tempfile(fileext = ".css")
writeLines(":root { --primary: oklch(0.54 0.16 320); }", css)

bc_theme(css)
#> List of 10
#>  $ name      : chr "basecoat-theme-file19d71cf2ba7f"
#>  $ version   : chr "1.0.0"
#>  $ src       :List of 1
#>   ..$ file: chr "/tmp/RtmptYTl6D"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "file19d71cf2ba7f.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : NULL
#>  $ all_files : logi FALSE
#>  - attr(*, "class")= chr "html_dependency"
```
