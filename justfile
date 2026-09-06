default:
  just --list

readme:
  quarto render README.qmd --to gfm
