# Re-initialise Basecoat after a swap

Basecoat initialises its components on load and when new DOM is
inserted, so this is only wanted where markup is restored from a cache
rather than parsed.

## Usage

``` r
bc_init(force = FALSE)
```

## Arguments

- force:

  Bool. Destroy and rebuild components that are already initialised,
  which also clears open menus and focus.

## Value

A `<script>` tag.

## Details

An htmx history restore is the case this exists for: the browser puts
back DOM that was already initialised, and only `force` rebuilds it.

## Examples

``` r
bc_init(force = TRUE)
#> <script>window.basecoat.initAll({ force: true })</script>
```
