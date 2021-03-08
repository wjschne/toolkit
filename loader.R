# automatically create a bib database for R packages

library(extrafont)
library(tufte)
library(knitr)
library(sn)
library(fMultivar)
library(IDPmisc)
library(psych)
library(tidyverse)
library(gganimate)
library(ggforce)
library(sjmisc)
library(WJSmisc)
library(tippy)
library(tikzDevice)
library(patchwork)
library(qualvar)
library(modeest)
fullcompile = F
options(knitr.kable.digits = 2, knitr.kable.na = '')
knitr::opts_chunk$set(echo = F,
                      fig.width = 7,
                      fig.height = 5,
                      fig.align = 'center',
                      # out.width = "100%",
                      dev = "svg",
                      cache = TRUE)
bfont = "Equity Text A Tab"
bsize = 16
ggtext_size <- function(bsize, ratio = 0.8) ratio * bsize / ggplot2:::.pt
btxt_size = ggtext_size(bsize)
myfills <- c("royalblue","firebrick")
myfills <- c("royalblue4","firebrick4", "#51315E")
ggplot2::update_geom_defaults("text", list(family = bfont, size = btxt_size))
ggplot2::update_geom_defaults("label", list(family = bfont,
                                            size = btxt_size,
                                            label.padding = unit(0, "lines"),
                                            label.size = 0))
ggplot2::update_geom_defaults("density", list(fill = myfills[1]))
geom_text_fill <- function(...) {
  geom_label(..., label.padding = unit(0, "lines"), label.size = 0)}
theme_set(theme_minimal(base_size = bsize, base_family = bfont))
pdf2svg <- function(s) shell(paste0("pdf2svg ",s,".pdf ",s,".svg"))

prob_label <- function(p, accuracy = 0.01, digits = NULL) {
  if (is.null(digits)) {
    l <- scales::number(p, accuracy = accuracy) %>%
      str_remove("^0")
  } else {
    l <- formatC(p,
                 digits = digits,
                 format = "fg") %>%
      str_remove("^0")
  }


  l[p == 0] <- "0"
  l[p == 1] <- "1"
  l
}


