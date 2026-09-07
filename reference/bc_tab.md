# Tab Panel

A helper function to create individual tab content panels.

## Usage

``` r
bc_tab(..., id = NULL, label, disabled = FALSE)
```

## Arguments

- ...:

  Content for the tab panel.

- id:

  String. The ID for this tab panel (optional).

- label:

  String. The label for this tab.

- disabled:

  Bool. Whether the tab is disabled.

## Value

A list containing tab properties.

## Examples

``` r
bc_tab("Account details", label = "Account")
#> $id
#> NULL
#> 
#> $label
#> [1] "Account"
#> 
#> $content
#> Account details
#> 
#> $disabled
#> [1] FALSE
#> 

bc_tab(
  htmltools::p("Nothing to bill yet."),
  label = "Billing",
  disabled = TRUE
)
#> $id
#> NULL
#> 
#> $label
#> [1] "Billing"
#> 
#> $content
#> <p>Nothing to bill yet.</p>
#> 
#> $disabled
#> [1] TRUE
#> 
```
