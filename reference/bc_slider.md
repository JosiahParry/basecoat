# Slider

A range input component styled as a slider.

## Usage

``` r
bc_slider(
  min,
  max,
  value,
  ...,
  disabled = FALSE,
  id = NULL,
  label = NULL,
  description = NULL,
  oninput = NULL
)
```

## Arguments

- min:

  Number. The minimum value of the slider.

- max:

  Number. The maximum value of the slider.

- value:

  Number. The current value of the slider.

- ...:

  Additional attributes passed to the `<input>`.

- disabled:

  Bool. Whether the slider is disabled.

- id:

  String. The input `id`, and the `for` of its label.

- label:

  String or tag. Optional label for the slider.

- description:

  String or tag. Helper text shown under the label, wired to the input
  with `aria-describedby`.

- oninput:

  String. JavaScript function to run when the input changes.

## Value

A tag with an `<input type="range">` element.

## Examples

``` r
bc_slider(0, 100, 50)
#> <input type="range" class="input w-full" min="0" max="100" value="50" id="slider-34255631"/>

bc_slider(
  min = 0,
  max = 100,
  value = 50,
  label = "Temperature",
  description = "Adjust the temperature setting"
)
#> <div role="group" class="field">
#>   <input type="range" class="input w-full" min="0" max="100" value="50" id="slider-88683287" aria-describedby="slider-88683287-description"/>
#>   <section>
#>     <label class="label" for="slider-88683287">Temperature</label>
#>     <p id="slider-88683287-description">Adjust the temperature setting</p>
#>   </section>
#> </div>
```
