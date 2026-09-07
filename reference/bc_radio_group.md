# Radio Group

A radio group component with individual radio inputs.

## Usage

``` r
bc_radio_group(..., name, label = name, disabled = FALSE, invalid = FALSE)
```

## Arguments

- ...:

  Radio tags from
  [`bc_radio()`](https://josiahparry.github.io/basecoat/reference/bc_radio.md).

- name:

  String. The `name` attribute applied to every radio in the group,
  overriding any per-input name.

- label:

  String. Accessible label for the group, defaulting to `name`.

- disabled:

  Bool. Whether to mark the entire group as disabled.

- invalid:

  Bool. Whether to show the invalid state for the group.

## Value

A tag with role="radiogroup".

## Examples

``` r
bc_radio_group(
  name = "density",
  bc_radio("default", "Default"),
  bc_radio("comfortable", "Comfortable"),
  bc_radio("compact", "Compact")
)
#> <div role="radiogroup" aria-label="density" data-slot="radio-group" class="w-fit">
#>   <div role="group" class="field" data-orientation="horizontal">
#>     <input type="radio" id="default" name="density" class="input"/>
#>     <label for="default">Default</label>
#>   </div>
#>   <div role="group" class="field" data-orientation="horizontal">
#>     <input type="radio" id="comfortable" name="density" class="input"/>
#>     <label for="comfortable">Comfortable</label>
#>   </div>
#>   <div role="group" class="field" data-orientation="horizontal">
#>     <input type="radio" id="compact" name="density" class="input"/>
#>     <label for="compact">Compact</label>
#>   </div>
#> </div>

bc_radio_group(
  name = "plan",
  bc_radio("monthly", "Monthly", checked = TRUE),
  bc_radio("yearly", "Yearly"),
  bc_radio("lifetime", "Lifetime")
)
#> <div role="radiogroup" aria-label="plan" data-slot="radio-group" class="w-fit">
#>   <div role="group" class="field" data-orientation="horizontal">
#>     <input type="radio" id="monthly" name="plan" class="input" checked/>
#>     <label for="monthly">Monthly</label>
#>   </div>
#>   <div role="group" class="field" data-orientation="horizontal">
#>     <input type="radio" id="yearly" name="plan" class="input"/>
#>     <label for="yearly">Yearly</label>
#>   </div>
#>   <div role="group" class="field" data-orientation="horizontal">
#>     <input type="radio" id="lifetime" name="plan" class="input"/>
#>     <label for="lifetime">Lifetime</label>
#>   </div>
#> </div>
```
