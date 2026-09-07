#' Select
#'
#' A selection component with dropdown options.
#'
#' @param ... List of options. Each item can be a string or a list with 'value' and 'label'.
#' @param placeholder String. Placeholder text when no value is selected.
#' @param name String. The name attribute for the hidden input.
#' @param id String. The ID for the select container.
#' @param disabled Bool. Whether the select is disabled.
#' @param invalid Bool. Whether the select is in an invalid state.
#' @param multiple Bool. Whether multiple selections are allowed.
#' @return A tag with proper select structure.
#' @export
#' @examples
#' bc_select(
#'   "Apple",
#'   "Banana",
#'   "Blueberry",
#'   placeholder = "Select a fruit"
#' )
#'
#' bc_select(
#'   list(value = "light", label = "Light"),
#'   list(value = "dark", label = "Dark"),
#'   list(value = "system", label = "System"),
#'   placeholder = "Theme"
#' )
bc_select <- function(...,
                      placeholder = NULL,
                      name = NULL,
                      id = NULL,
                      disabled = FALSE,
                      invalid = FALSE,
                      multiple = FALSE) {
  check_string(placeholder, allow_null = TRUE, allow_empty = TRUE)
  if (!is.null(name)) check_string(name, allow_empty = FALSE)
  check_bool(disabled)
  check_bool(invalid)
  check_bool(multiple)
  
  # Generate IDs if not provided
  if (is.null(id)) {
    id <- paste0("select-", paste0(sample(1:9, 8, replace = TRUE), collapse = ""))
  }
  
  if (is.null(name)) {
    name <- id
  }
  
  trigger_id <- paste0(id, "-trigger")
  listbox_id <- paste0(id, "-listbox")
  popover_id <- paste0(id, "-popover")
  hidden_input_name <- paste0(id, "-value")
  
  # Process options
  options_list <- list(...)
  
  # Create option elements
  option_elements <- lapply(seq_along(options_list), function(i) {
    opt <- options_list[[i]]
    
    if (is.character(opt)) {
      value <- opt
      label <- opt
    } else if (is.list(opt) && !is.null(opt$value)) {
      value <- opt$value
      label <- if (!is.null(opt$label)) opt$label else value
    } else {
      return(NULL)
    }
    
    div(
      role = "option",
      `data-value` = value,
      label
    )
  })
  
  # Filter out any NULL elements
  option_elements <- option_elements[!sapply(option_elements, is.null)]
  
  # Create listbox with options
  listbox <- div(
    role = "listbox",
    id = listbox_id,
    `aria-orientation` = "vertical",
    `aria-labelledby` = trigger_id,
    option_elements
  )
  
  # Create popover
  popover <- div(
    `data-popover` = NA,
    `aria-hidden` = "true",
    listbox
  )
  
  # Create trigger button
  trigger_button <- tags$button(
    type = "button",
    class = "w-[180px]",
    id = trigger_id,
    `aria-haspopup` = "listbox",
    `aria-expanded` = "false",
    `aria-controls` = listbox_id,
    `data-disabled` = if (disabled) NA,
    `data-invalid` = if (invalid) NA,
    span(class = "truncate", placeholder),
    HTML(
      '<svg class="lucide lucide-chevron-down text-muted-foreground opacity-50 shrink-0" ',
      'xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" ',
      'fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" ',
      'stroke-linejoin="round"><path d="m6 9 6 6 6-6"/></svg>'
    )
  )
  
  # Create hidden input
  hidden_input <- tags$input(
    type = "hidden",
    name = hidden_input_name,
    value = ""
  )
  
  # Create the main select container
  bc_tag(div(
    class = "select",
    id = id,
    `data-placeholder` = placeholder,
    `data-disabled` = if (disabled) NA,
    `data-invalid` = if (invalid) NA,
    `data-multiple` = if (multiple) NA,

    trigger_button,
    popover,
    hidden_input
  ))
}

#' Select Option
#'
#' A helper function to create individual select options.
#'
#' @param value String. The value of the option.
#' @param label String. The display label for the option.
#' @return A list containing option properties.
#' @export
bc_select_option <- function(value, label = NULL) {
  check_string(value, allow_empty = FALSE)
  
  list(
    value = value,
    label = if (is.null(label)) value else label
  )
}