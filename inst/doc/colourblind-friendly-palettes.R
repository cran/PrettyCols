## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
#  install.packages("PrettyCols")

## ----eval = FALSE-------------------------------------------------------------
#  remotes::install_github("nrennie/PrettyCols")

## -----------------------------------------------------------------------------
library(PrettyCols)

## ----eval = F-----------------------------------------------------------------
#  colourblind_friendly()

## ----out.width = "60%", fig.align="center"------------------------------------
view_all_palettes(colourblind_friendly = TRUE)

## ----out.width = "60%", fig.align="center"------------------------------------
view_all_palettes(type = "div", colourblind_friendly = TRUE)

