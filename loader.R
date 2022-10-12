# Load packages
library(extrafont)
loadfonts("win")
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
library(tinter)
library(ggfx)
library(ggtext)
library(lemon)
library(signs)
library(scales)
library(psycheval)
library(bezier)

# Set options
options(knitr.kable.digits = 2, knitr.kable.na = '')
knitr::opts_chunk$set(echo = F,
                      fig.width = 7,
                      fig.height = 5,
                      fig.align = 'center',
                      # out.width = "100%",
                      dev = "svg",
                      cache = TRUE)

# Default fonts and colors
bfont = "Equity Text A Tab"
bsize = 16
myfills <- c("royalblue4", "firebrick4", "#51315E")
alpha(myfills)
# Function for converting base size to geom_text size
ggtext_size <- function(base_size, ratio = 0.8) {
  ratio * base_size / ggplot2:::.pt
}

btxt_size = ggtext_size(bsize)

# Default geoms and themes
ggplot2::update_geom_defaults("text",
                              list(family = bfont, size = btxt_size))
ggplot2::update_geom_defaults("label",
                              list(
                                family = bfont,
                                size = btxt_size,
                                label.padding = unit(0, "lines"),
                                label.size = 0
                              ))

ggplot2::update_geom_defaults("richtext",
                              list(family = bfont, size = btxt_size))

ggplot2::update_geom_defaults("density", list(fill = myfills[1]))
geom_text_fill <- function(...) {
  geom_label(...,
             label.padding = unit(0, "lines"),
             label.size = 0)
}
theme_set(theme_minimal(base_size = bsize, base_family = bfont))


# font family
span_style <- function(x, style = "font-family:serif") {
  paste0('<span style=\"',
         style,
         '\">',
         x,
         "</span>")
}

# Probability labels
prob_label <- function(p,
                       accuracy = 0.01,
                       digits = NULL,
                       max_digits = NULL,
                       remove_leading_zero = TRUE,
                       round_zero_one = TRUE) {
  if (is.null(digits)) {
    l <- scales::number(p, accuracy = accuracy)
  } else {
    sig_digits <- abs(ceiling(log10(p + p / 1000000000)) - digits)
    sig_digits[p > 0.99] <- abs(ceiling(log10(1 - p[p > 0.99])) - digits + 1)
    sig_digits[(ceiling(log10(p)) == log10(p)) & (-log10(p) >= digits)] <- sig_digits[ceiling(log10(p)) == log10(p)] - 1
    sig_digits[is.infinite(sig_digits)] <- 0
    l <- purrr::map2_chr(p,
                         sig_digits,
                         formatC,
                         format = "f",
                         flag = "#")

  }
  if (remove_leading_zero) l <- sub("^-0","-", sub("^0","", l))

  if (round_zero_one) {
    l[p == 0] <- "0"
    l[p == 1] <- "1"
    l[p == -1] <- "-1"
  }

  if (!is.null(max_digits)) {
    if (round_zero_one) {
      l[round(p, digits = max_digits) == 0] <- "0"
      l[round(p, digits = max_digits) == 1] <- "1"
      l[round(p, digits = max_digits) == -1] <- "-1"
    } else {
      l[round(p, digits = max_digits) == 0] <- paste0(".", paste0(rep("0", max_digits), collapse = ""))
      l[round(p, digits = max_digits) == 1] <- paste0("1.", paste0(rep("0", max_digits), collapse = ""))
      l[round(p, digits = max_digits) == -1] <- paste0("-1.", paste0(rep("0", max_digits), collapse = ""))
    }
  }

  dim(l) <- dim(p)
  l
}

# Set table column width
# https://github.com/rstudio/bookdown/issues/122#issuecomment-221101375
html_table_width <- function(kable_output, width, tag = "</caption>"){
  width_html <- paste0(
    paste0('<col width="',
           width,
           '">'),
    collapse = "\n")
  sub(tag,
      paste0(tag,
             "\n",
             width_html),
      kable_output)
}

# Make a matrix with braces
bmatrix <- function(M, brace = "bmatrix", includenames=TRUE) {
  if (includenames) {
    M <- cbind(rownames(M),M)
    M <- rbind(colnames(M), M)
  }
  M <-  paste(apply(M,
                    MARGIN = 1,
                    FUN = paste0,
                    collapse = " & "),
              collapse = "\\\\\n")


  if (!is.null(brace)) {
    M <- paste0("\\begin{",brace,"}\n", M, "\n\\end{", brace , "}")
    }
  M
}

defword <- function(word,
                    note,
                    wordclass="defword",
                    noteclass = "marginnote defword",
                    icon = "&#8853;") {
  # Adapted from tufte:::marginnote_html

  sprintf(
    paste0(
      "<span class=\"%s\">%s</span>",
      "<span class=\"%s\">",
      "<label for=\"tufte-mn-\" class=\"margin-toggle\">%s</label>",
      "<input type=\"checkbox\" id=\"tufte-mn-\" class=\"margin-toggle\">%s",
      "</span>"
    ),
    wordclass,
    word,
    noteclass,
    icon,
    note
  )
}

# Hooks -------

# Enclose collapsible r chunk in  button
knitr::opts_hooks$set(button_r = function(options) {
  if (isTRUE(options$button_r)) {
    options$button_before_r <- TRUE
    options$button_after <- TRUE
    options$echo = TRUE; options$eval = FALSE
  }

  options
})

# Enclose collapsible latex chunk in  button
knitr::opts_hooks$set(button_latex = function(options) {
  if (isTRUE(options$button_latex)) {
    options$button_before_latex <- TRUE
    options$button_after <- TRUE
    options$echo = TRUE; options$eval = FALSE
  }

  options
})

# before button for collapsible r chunk
knit_hooks$set(
  button_before_r = function(before, options, envir) {
    if (before) {
      return(
        paste0(
          '<div class="wrap-collapsible" style="margin-top: 1em">',
          "\n",
          '<input id="collapsible-',
          options$label,
          '" class="toggle" type="checkbox">',
          "\n",
          '<label for="collapsible-',
          options$label,
          '" class="lbl-toggle">R Code</label>',
          '<div class="collapsible-content">',
          "\n",
          '<div class="content-inner">'
        )
      )
    }
  }
)

# before button for collapsible latex chunk
knit_hooks$set(
  button_before_latex = function(before, options, envir) {
    if (before) {
      codetype = "$\\rm\\LaTeX~Code$"
      return(
        paste0(
          '<div class="wrap-collapsible" style="margin-top: 1em">',
          "\n",
          '<input id="collapsible-',
          options$label,
          '" class="toggle" type="checkbox">',
          "\n",
          '<label for="collapsible-',
          options$label,
          '" class="lbl-toggle">',
          codetype,
          '</label>',
          '<div class="collapsible-content">',
          "\n",
          '<div class="content-inner">'
        )
      )
    }
  }
)

# After button for collapsible chunks
knit_hooks$set(button_after = function(before, options, envir) {
  if (!before) return('</div></div></div>')
})

