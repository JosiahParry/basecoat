# Input Group

A group shell for a native control with inline or block addons.

## Usage

``` r
bc_input_group(..., orientation = "default", aria_label = NULL, class = NULL)

bc_input_group_addon(..., align = "start", aria_hidden = FALSE)
```

## Arguments

- ...:

  The native control and addon children.

- orientation:

  String. `default` for inline controls, `vertical` for `header` and
  `footer` addon rows.

- aria_label:

  String. Accessible name, added only when the group itself is named.

- class:

  String. Extra classes for the shell.

- align:

  String. Addon placement, written to `data-align`. One of start, end,
  inline-start, inline-end, block-start, block-end.

- aria_hidden:

  Bool. Whether to mark the addon `aria-hidden="true"`.

## Value

A `<div>` tag.

## Details

The shell leaves native controls semantic and borderless. `header` and
`footer` rows need `orientation = "vertical"`, and custom controls take
`data-control`.

## Examples

``` r
bc_input_group(
  htmltools::tags$input(type = "text", placeholder = "Search..."),
  bc_input_group_addon("Ctrl K", align = "start"),
  bc_input_group_addon("Search", align = "end")
)
#> <div class="input-group">
#>   <input type="text" placeholder="Search..."/>
#>   <span data-align="start">Ctrl K</span>
#>   <span data-align="end">Search</span>
#> </div>

bc_input_group(
  htmltools::tags$textarea(placeholder = "Enter your message"),
  htmltools::tags$footer(
    `data-align` = "end",
    htmltools::span("120 characters left")
  ),
  orientation = "vertical"
)
#> <div class="input-group" data-orientation="vertical">
#>   <textarea placeholder="Enter your message"></textarea>
#>   <footer data-align="end">
#>     <span>120 characters left</span>
#>   </footer>
#> </div>
```
