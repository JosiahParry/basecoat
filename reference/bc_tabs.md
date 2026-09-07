# Tabs

A tab component with navigation and content panels.

## Usage

``` r
bc_tabs(..., variant = "default", orientation = "horizontal", id = NULL)
```

## Arguments

- ...:

  List of tabs. Each item should be a list with 'label', 'content', and
  optionally 'id' and 'disabled'.

- variant:

  String. The tab variant ("default" or "line").

- orientation:

  String. The tab orientation ("horizontal" or "vertical").

- id:

  String. The ID for the tabs container.

## Value

A tag with proper tab structure.

## Examples

``` r
bc_tabs(
  bc_tab("Account details", label = "Account"),
  bc_tab("Password settings", label = "Password"),
  bc_tab("Not yet", label = "Billing", disabled = TRUE)
)
#> <div class="tabs w-full" id="tabs-58534192">
#>   <nav role="tablist" aria-orientation="horizontal" data-variant="default" class="w-full">
#>     <button type="button" role="tab" id="tabs-58534192-tab-1" aria-controls="tabs-58534192-panel-1" aria-selected="true" tabindex="0">Account</button>
#>     <button type="button" role="tab" id="tabs-58534192-tab-2" aria-controls="tabs-58534192-panel-2" aria-selected="false" tabindex="-1">Password</button>
#>     <button type="button" role="tab" id="tabs-58534192-tab-3" aria-controls="tabs-58534192-panel-3" aria-selected="false" tabindex="-1" data-disabled>Billing</button>
#>   </nav>
#>   <div role="tabpanel" id="tabs-58534192-panel-1" aria-labelledby="tabs-58534192-tab-1" tabindex="-1" aria-selected="true" hidden="FALSE">Account details</div>
#>   <div role="tabpanel" id="tabs-58534192-panel-2" aria-labelledby="tabs-58534192-tab-2" tabindex="-1" aria-selected="false" hidden="TRUE">Password settings</div>
#>   <div role="tabpanel" id="tabs-58534192-panel-3" aria-labelledby="tabs-58534192-tab-3" tabindex="-1" aria-selected="false" data-disabled hidden="TRUE">Not yet</div>
#> </div>

bc_tabs(
  bc_tab(bc_card(bc_card_body("Usage this month")), label = "Usage"),
  bc_tab(bc_card(bc_card_body("Seats and roles")), label = "Team"),
  variant = "line",
  id = "workspace"
)
#> <div class="tabs w-full" id="workspace">
#>   <nav role="tablist" aria-orientation="horizontal" data-variant="line" class="w-full">
#>     <button type="button" role="tab" id="workspace-tab-1" aria-controls="workspace-panel-1" aria-selected="true" tabindex="0">Usage</button>
#>     <button type="button" role="tab" id="workspace-tab-2" aria-controls="workspace-panel-2" aria-selected="false" tabindex="-1">Team</button>
#>   </nav>
#>   <div role="tabpanel" id="workspace-panel-1" aria-labelledby="workspace-tab-1" tabindex="-1" aria-selected="true" hidden="FALSE">
#>     <div class="card">
#>       <section>Usage this month</section>
#>     </div>
#>   </div>
#>   <div role="tabpanel" id="workspace-panel-2" aria-labelledby="workspace-tab-2" tabindex="-1" aria-selected="false" hidden="TRUE">
#>     <div class="card">
#>       <section>Seats and roles</section>
#>     </div>
#>   </div>
#> </div>
```
