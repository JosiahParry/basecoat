# Textarea

A multiline `<textarea>` carrying the Basecoat `textarea` class,
optionally wrapped with a label in a `field`.

## Usage

``` r
bc_textarea(
  ...,
  label = NULL,
  id = NULL,
  placeholder = NULL,
  value = NULL,
  rows = NULL,
  description = NULL,
  name = id,
  required = FALSE,
  disabled = FALSE,
  invalid = FALSE
)
```

## Arguments

- ...:

  Tag attributes for the `<textarea>`.

- label:

  String or tag. The label content.

- id:

  String. The input `id`, required when a `label` is given.

- placeholder:

  String. Placeholder text.

- value:

  String. The initial value.

- rows:

  String. The `rows` attribute.

- description:

  String or tag. Helper text shown under the input, wired to it with
  `aria-describedby`.

- name:

  String. The input `name`, defaulting to `id`.

- required:

  Bool. Whether the input is required.

- disabled:

  Bool. Whether the input is disabled.

- invalid:

  Bool. Whether to show the invalid state.

## Value

A `<textarea>` tag or, with a `label`, a `<div>` tag.

## Details

The value is rendered as the textarea's text content, and a textarea
inside a `field` is styled by the field without needing the `textarea`
class.

## Examples

``` r
bc_textarea(placeholder = "Type your message here")
#> <textarea class="textarea" placeholder="Type your message here"></textarea>

bc_textarea(
  id = "message",
  label = "Message",
  placeholder = "Type your message here",
  description = "Write a short message."
)
#> <div role="group" class="field">
#>   <label for="message">Message</label>
#>   <textarea id="message" name="message" placeholder="Type your message here" aria-describedby="message-description"></textarea>
#>   <p id="message-description">Write a short message.</p>
#> </div>
```
