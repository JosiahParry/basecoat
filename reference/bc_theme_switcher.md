# Theme Switcher

A button that flips the `dark` class on `<html>`, toggling the page
theme.

## Usage

``` r
bc_theme_switcher(...)
```

## Arguments

- ...:

  Tag attributes and children for the `<button>`.

## Value

A `<button>` tag with the theme utilities attached.

## Details

Ships the Tailwind utilities the sun and moon swap on (`hidden`,
`block`, `dark:block`, `dark:hidden`, `size-8`) as a head dependency, so
a page needs no Tailwind build. The Basecoat runtime behind
[`bc_deps()`](https://josiahparry.github.io/basecoat/reference/bc_deps.md)
drives the toggle, and a bundled script applies the stored mode on load.

## Examples

``` r
bc_theme_switcher()
#> <button type="button" aria-label="Toggle dark mode" data-tooltip="Toggle dark mode" data-side="bottom" onclick="window.basecoat.theme.toggle()" class="btn size-8" data-variant="outline" data-size="icon">
#>   <span class="hidden dark:block"><svg class="lucide lucide-sun" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="4" /><path d="M12 2v2" /><path d="M12 20v2" /><path d="m4.93 4.93 1.41 1.41" /><path d="m17.66 17.66 1.41 1.41" /><path d="M2 12h2" /><path d="M20 12h2" /><path d="m6.34 17.66-1.41 1.41" /><path d="m19.07 4.93-1.41 1.41" /></svg></span>
#>   <span class="block dark:hidden"><svg class="lucide lucide-moon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20.985 12.486a9 9 0 1 1-9.473-9.472c.405-.022.617.46.402.803a6 6 0 0 0 8.268 8.268c.344-.215.825-.004.803.401" /></svg></span>
#> </button>
```
