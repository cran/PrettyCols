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

## -----------------------------------------------------------------------------
names(PrettyColsPalettes)

## ----out.width = "100%", fig.align="center"-----------------------------------
prettycols("Tangerines")

## ----out.width = "100%", fig.align="center"-----------------------------------
prettycols("Tangerines", n = 50, type = "continuous", direction = -1)

## ----out.width = "100%", fig.align="center"-----------------------------------
view_all_palettes()

## ----eval = FALSE-------------------------------------------------------------
#  view_all_palettes(type == "all")

## ----out.width = "100%", fig.align="center"-----------------------------------
view_all_palettes(type = "seq")

