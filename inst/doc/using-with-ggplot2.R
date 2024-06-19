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
library(ggplot2)
df <- data.frame(
  type = c("A", "B", "C"),
  value = c(1, 2, 3)
)

## ----fig.show="hold", out.width = "47%"---------------------------------------
ggplot(
  data = df,
  mapping = aes(x = type, y = value, fill = type)
) +
  geom_col() +
  scale_fill_pretty_d(palette = "Blues")

ggplot(
  data = df,
  mapping = aes(x = type, y = value, colour = type)
) +
  geom_col(linewidth = 2, fill = "white") +
  scale_colour_pretty_d(palette = "Blues")

## ----fig.show="hold", out.width = "47%"---------------------------------------
ggplot(
  data = df,
  mapping = aes(x = type, y = value, fill = value)
) +
  geom_col() +
  scale_fill_pretty_c(palette = "Purples")

ggplot(
  data = df,
  mapping = aes(x = type, y = value, colour = value)
) +
  geom_col(linewidth = 2, fill = "white") +
  scale_colour_pretty_c(palette = "Purples", direction = -1)

## ----fig.show="hold", out.width = "47%"---------------------------------------
ggplot(
  data = df,
  mapping = aes(x = type, y = value, fill = value)
) +
  geom_col() +
  scale_fill_pretty_div(palette = "PurpleYellows", midpoint = 2)

ggplot(
  data = df,
  mapping = aes(x = type, y = value, colour = value)
) +
  geom_col(linewidth = 2, fill = "white") +
  scale_colour_pretty_div(palette = "PurpleYellows", midpoint = 2)

## ----fig.show="hold", out.width = "47%", fig.align='center'-------------------
ggplot(
  data = df,
  mapping = aes(x = type, y = value, fill = value)
) +
  geom_col() +
  scale_fill_pretty_c(palette = "Purples", name = "My New Title") +
  theme(legend.title = element_text(colour = "blue"))

