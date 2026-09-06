#' Popover
#'
#' An inline popover of content beside its trigger.
#'
#' @param ... Content for the popover.
#' @param id String. The ID for the popover wrapper.
#' @param trigger_label String. The trigger button's label.
#' @param side String. Placement of the popover. One of `top`, `right`,
#'   `bottom`, `left`, `inline-start` or `inline-end`.
#' @param align String. Alignment of the popover on its side. One of `start`,
#'   `center` or `end`.
#' @param class String. Extra classes for the popover content, on top of the
#'   default `w-72`.
#' @return A `<div class="popover">` with a trigger button and the popover
#'   content.
#' @details
#' The script toggles the popover's `data-popover` content next to its trigger.
#' @export
#' @examples
#' bc_popover(
#'   htmltools::tags$header(
#'     htmltools::tags$h4("Title"),
#'     htmltools::tags$p("A short description.")
#'   )
#' )
bc_popover <- function(...,
                       id = NULL,
                       trigger_label = "Open popover",
                       side = "bottom",
                       align = "center",
                       class = NULL) {
  check_string(trigger_label, allow_empty = FALSE)
  side <- arg_match(side, c("top", "right", "bottom", "left", "inline-start", "inline-end"))
  align <- arg_match(align, c("start", "center", "end"))
  check_string(class, allow_null = TRUE, allow_empty = TRUE)

  if (is.null(id)) {
    id <- paste0("popover-", paste0(sample(1:9, 8, replace = TRUE), collapse = ""))
  }

  trigger <- tags$button(
    type = "button",
    id = paste0(id, "-trigger"),
    `aria-expanded` = "false",
    `aria-controls` = paste0(id, "-popover"),
    class = "btn",
    `data-variant` = "outline",
    trigger_label
  )

  popover <- div(
    id = paste0(id, "-popover"),
    `data-popover` = NA,
    `aria-hidden` = "true",
    `data-side` = if (side != "bottom") side,
    `data-align` = align,
    class = paste0("w-72", if (!is.null(class)) paste0(" ", class)),
    ...
  )

  div(class = "popover", id = id, trigger, popover)
}