## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  devtools::install_github("nrennie/PrettyCols")

## ---- eval = FALSE------------------------------------------------------------
#  remotes::install_github("nrennie/PrettyCols")

## -----------------------------------------------------------------------------
library(PrettyCols)

## -----------------------------------------------------------------------------
library(ggplot2)
df <- data.frame(type = c("A", "B", "C"),
                 value = c(1, 2, 3))

## ---- fig.show="hold", out.width = "47%"--------------------------------------
ggplot(data = df,
       mapping = aes(x = type, y = value, fill = type)) +
  geom_col() +
  scale_fill_pretty_d(name = "Blues")

ggplot(data = df,
       mapping = aes(x = type, y = value, colour = type)) +
  geom_col(size = 2, fill = "white") +
  scale_colour_pretty_d(name = "Blues")

## ---- fig.show="hold", out.width = "47%"--------------------------------------
ggplot(data = df,
       mapping = aes(x = type, y = value, fill = value)) +
  geom_col() +
  scale_fill_pretty_c(name = "Purples")

ggplot(data = df,
       mapping = aes(x = type, y = value, colour = value)) +
  geom_col(size = 2, fill = "white") +
  scale_colour_pretty_c(name = "Purples", direction = -1)

