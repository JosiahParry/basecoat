# Select Option

A helper function to create individual select options.

## Usage

``` r
bc_select_option(value, label = NULL)
```

## Arguments

- value:

  String. The value of the option.

- label:

  String. The display label for the option.

## Value

A list containing option properties.

## Examples

``` r
bc_select_option("dark", "Dark")
#> $value
#> [1] "dark"
#> 
#> $label
#> [1] "Dark"
#> 

bc_select(
  bc_select_option("us-east-1", "US East"),
  bc_select_option("eu-west-1", "EU West"),
  placeholder = "Region"
)
#> <div class="select" id="select-84917488" data-placeholder="Region" data-close-on-select="true">
#>   <button type="button" class="w-[180px]" id="select-84917488-trigger" aria-haspopup="listbox" aria-expanded="false" aria-controls="select-84917488-listbox">
#>     <span class="truncate">Region</span>
#>     <svg class="lucide lucide-chevron-down text-muted-foreground opacity-50 shrink-0" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6"/></svg>
#>   </button>
#>   <div id="select-84917488-popover" data-popover aria-hidden="true">
#>     <div role="listbox" id="select-84917488-listbox" aria-orientation="vertical" aria-labelledby="select-84917488-trigger">
#>       <div role="option" data-value="us-east-1">US East</div>
#>       <div role="option" data-value="eu-west-1">EU West</div>
#>     </div>
#>   </div>
#>   <input type="hidden" name="select-84917488" value=""/>
#> </div>
```
