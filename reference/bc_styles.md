# The style packs

The style packs Basecoat ships, as named on its installation page. All
of them are bundled with this package.

## Usage

``` r
bc_styles
```

## Format

A character vector of 8 names.

## Details

`bc_deps(style = )` also takes `"base"`, which is not a pack but the
styleless layer underneath them.

## Examples

``` r
bc_styles
#> [1] "vega" "nova" "maia" "lyra" "mira" "luma" "sera" "rhea"

lapply(bc_styles, function(style) bc_deps(style, js = FALSE))
#> [[1]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-vega.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> [[2]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-nova.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> [[3]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-maia.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> [[4]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-lyra.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> [[5]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-mira.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> [[6]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-luma.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> [[7]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-sera.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> [[8]]
#> List of 10
#>  $ name      : chr "basecoat"
#>  $ version   : chr "1.0.2"
#>  $ src       :List of 1
#>   ..$ file: chr "basecoat"
#>  $ meta      : NULL
#>  $ script    : NULL
#>  $ stylesheet: chr "basecoat-rhea.min.css"
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : chr "basecoat"
#>  $ all_files : logi TRUE
#>  - attr(*, "class")= chr "html_dependency"
#> 
```
