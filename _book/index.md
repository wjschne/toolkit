--- 
title: "The Psychometrics of Individual Assessment"
subtitle: "A Practical Toolkit With Applications in R"
author: "W. Joel Schneider"
date: "2021-03-23"
site: bookdown::bookdown_site
output:
  bookdown::tufte_html_book:
    toc: TRUE
    toc_depth: 2
    css: [toc.css,equity.css,mycss.css]
    tufte_features: []
    keep_md: true
    split_by: chapter
    highlight: pygments
    includes: 
      in_header: mj_config.html
documentclass: book
bibliography: [book.bib, packages.bib]
csl: apa.csl
link-citations: yes
github-repo: wjschne/toolkit
nocite: |
  @R-bookdown, @R-dplyr, @R-extrafont, @R-fBasics, @R-forcats, @R-fMultivar, @R-gganimate, @R-ggforce, @R-ggplot2, @R-IDPmisc, @R-knitr, @R-knitr, @R-purrr, @R-rmarkdown, @R-sjmisc, @R-sn, @R-stringr, @R-base, @R-tibble, @R-tidyr, @R-tidyverse, @R-tikzDevice, @R-tufte
---


# Preface {-}

I have ambitious goals for this book, but it is not nearly complete. I have been working on it off and on since 2012. Eventually it will have one or more R packages to accompany it. 





Most of the figures and tables for this book were created in R or in $\LaTeX$. To make the content as accessible and transparent as possible, I have included buttons that will reveal the code used to make each figure or table. For example, the initial setup code used for this book can be seen by clicking the button below:

<div class="wrap-collapsible" style="margin-top: 1em">
<input id="collapsible-setupCode" class="toggle" type="checkbox">
<label for="collapsible-setupCode" class="lbl-toggle">R Code</label><div class="collapsible-content">
<div class="content-inner">

```r
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
ggplot2::update_geom_defaults("density", list(fill = myfills[1]))
geom_text_fill <- function(...) {
  geom_label(...,
             label.padding = unit(0, "lines"),
             label.size = 0)
}
theme_set(theme_minimal(base_size = bsize, base_family = bfont))


# Probability labels
prob_label <- function(p,
                       accuracy = 0.01,
                       digits = NULL) {
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

# Set table column width
# https://github.com/rstudio/bookdown/issues/122#issuecomment-221101375
html_table_width <- function(kable_output, width){
  width_html <- paste0(paste0('<col width="', width, '">'), collapse = "\n")
  sub("</caption>", paste0("</caption>\n", width_html), kable_output)
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
```

</div></div></div>

In addition, all the files and code used to create this book can be found in its [Github repository](https://github.com/wjschne/toolkit).





<!--chapter:end:index.Rmd-->


# Introduction {#intro}

Although great painters can make good art with cheap brushes, they need high quality tools to work at the upper limits of their craft. On the other hand, giving an untrained person an expensive set of brushes is unlikely to result in noticeably better art. So it is with these tools. They are of little use to unprepared hands---and in foolish hands, they might even be dangerous. But in hands caring and competent, they can make reasoning more rigorous, results more robust, and recommendations more relevant.

We can choose to spend assessment time and resources wisely in a comprehensive psychological assessment, but interviews, test administration, and behavioral observations necessarily take many hours of focused concentration. Scoring tests and integrating test information can take even more time. Then there is the considerable task of actually writing the report, which typically requires many hours. Finally, the results of the report are presented to the client and other decision-makers. If we invest this much time and effort in the process, it makes sense to make the most of it. Unfortunately, while making the most of it, it is easy to go too far---making reckless recommendations from iffy inferences and flights of fancy.

Humans are very very good at some things that are extraordinarily complex, such as pattern recognition. Humans are not so great at combining numeric data in their heads to come to valid conclusions. When Andy @clark2004natural [p. 5] said that biological brains are "to put it bluntly, bad at logic, good at Frisbee," it was no insult to Frisbee aficionados---robots are no match for humans at the sport. Furthermore, certain kinds of formal logic, though once considered to be the pinnacle of human intellect, are actually fairly simple for computers. Thus, we should let computers do what they do best: calculate. We humans have the job of deciding which calculations the computers should perform, interpreting what the results mean, and deciding how the new information should be used.

Most introductory psychometrics textbooks are designed to help researchers create well constructed tests and therefore cover many details that are not useful to clinicians and fail to cover many practical issues that clinicians should know about. This book is intended to help you extract useful information from the data you already have in ways that you may not have known were possible. That my emphasis is on the practical in no way implies that this book is dumbed down. My aim is to make psychometrics useful to clinicians. If some useful ideas are complex, I hope to make them accessible---but without resorting to superficial glossing. Some background knowledge of psychometrics is necessary to understand how these tools work and, more importantly, when their underlying assumptions have been violated.

<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="Philley2.png" alt="Philip Ley (1933--2015)&lt;br&gt;[Image Credit](https://thepsychologist.bps.org.uk/phil-ley-1933-2015)" width="100%"  />
<!--
<p class="caption marginnote">-->(\#fig:philipley)Philip Ley (1933--2015)<br>[Image Credit](https://thepsychologist.bps.org.uk/phil-ley-1933-2015)<!--</p>-->
<!--</div>--></span></p>

This book probably never would have been written had I not several years ago stumbled across Ley's [-@ley1972quantitative] *Quantitative aspects of psychological assessment*. I admire the book's blend of clarity, practicality, and depth. Why did I write my own book instead of recommending that clinicians download and use Ley's book? Well, I do recommend reading Ley's book. In contrast to my approach, Ley often takes time to gently lay out mathematical proofs of many ideas. Thus Ley's book is a wonderfully beginner-friendly introduction to the often considerably less accessible corpus of academic writings on psychometrics. I wanted to present much of the same material but with more of an eye to application. I also wanted to present many ideas not included in Ley's book. In addition, I chose to write this book because I believe that Ley had the right idea but that in an era in which no one had a home computer, few clinicians would have the knowledge, motivation, and stamina to use his equations on a regular basis. Now that computers are used by all clinicians, equations like those presented by Ley can be be made easy to use. All of the "tools" in this toolkit have been included in [unpublished package] (Schneider, 2021), a package in the R programming environment [@R-base].

<!--chapter:end:01-intro.Rmd-->


# Variables

Placeholder


## Nominal Scales {#nominal}
## Ordinal Scales
## Interval Scales
## Ratio Scales
## Discrete vs. Continuous Variables {#sec:DiscreteVsContinuous}

<!--chapter:end:02-variables.Rmd-->


# Distributions

Placeholder


## Random Variables
## Sets
### Discrete Sets
### Interval Sets
## Sample Spaces {#sec:SampleSpace}
## Probability Distributions {#sec:ProbabilityDistribution}
## Discrete Uniform Distributions {#sec:DiscreteUniform}
### Parameters of Random Variables 
### Probability Mass Functions {#sec:pmf}
### Cumulative Distribution Functions {#sec:CumDist}
### Quantile functions {#sec:Quantile}
### Generating a Random Sample in R
## Bernoulli Distributions {#sec:BernoulliDist}
### Generating a Random Sample from the Bernoulli Distribution
## Binomial Distributions {#sec:binomial}
### Clinical Applications of the Binomial Distribution 
### Graphing the binomial distribution
## Poisson Distributions
### A clinical application of the the Poisson distribution
## Geometric Distributions
## Probability Density Functions {#sec:pdf}
## Continuous Uniform Distributions {#sec:Uniform}
### Generating random samples from the continuous uniform distribution
### Using the continuous uniform distribution to generate random samples from other distributions
## Normal Distributions {#sec:normal}
### Notation for Normal Variates
## Half-Normal Distribution
## The Student's *t* Distribution

<!--chapter:end:03-Distributions.Rmd-->


# Descriptives

Placeholder


## Frequency Distribution Tables
### Frequency Distribution Tables in R
### Frequency Distribution Bar Plots
## Measures of Central Tendency
### Mode
### Median
### Mean
## Expected Values
## Measures of Variability
### Variability of Nominal Variables
### Variability of Ordinal Variables

<!--chapter:end:04-Descriptive-Statistics.Rmd-->


# Notation {-}

Placeholder


## Random variables, vectors, and matrices
## Sets and intervals
## Summation 
## Other 

<!--chapter:end:20-notation.Rmd-->



# References {-}







<!--chapter:end:99-references.Rmd-->

