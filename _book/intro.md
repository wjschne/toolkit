--- 
title: "Practical Psychometrics: A Psychological Assessment Toolkit"
author: "W. Joel Schneider"
date: "2021-03-02"
site: bookdown::bookdown_site
output:
  bookdown::tufte_html_book:
    toc: TRUE
    toc_depth: 1
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
github-repo: wjschne/psychtoolkit
---

# Preface {-}

Placeholder



<!--chapter:end:index.Rmd-->

# Introduction {#intro}

Although great painters can make good art with cheap brushes, they need high quality tools to work at the upper limits of their craft. On the other hand, giving an untrained person an expensive set of brushes is unlikely to result in noticeably better art. So it is with these tools. They are of little use to unprepared hands---and in foolish hands, they might even be dangerous. But in hands caring and competent, they can make reasoning more rigorous, results more robust, and recommendations more relevant.

We can choose to spend assessment time and resources wisely in a comprehensive psychological assessment, but interviews, test administration, and behavioral observations necessarily take many hours of focused concentration. Scoring tests and integrating test information can take even more time. Then there is the considerable task of actually writing the report.^[Putting together my first psychological evaluation report one summer in Texas, I fretted, sweated, and labored for more than 30 hours! Even now, at my fastest, it still takes me at least 3 hours of uninterrupted work to write what I consider to be a good report.] Finally, the results of the report are presented to the client and other decision-makers. If we invest this much time and effort in the process, it makes sense to make the most of it. Unfortunately, while making the most of it, it is easy to go too far---making reckless recommendations from iffy inferences and flights of fancy.

Humans are very very good at some things that are extraordinarily complex, such as pattern recognition. Humans are not so great at combining numeric data in their heads to come to valid conclusions. When Andy  @clark2004natural [p. 5] said that biological brains are "to put it bluntly, bad at logic, good at Frisbee," it was no insult to Frisbee aficionados---robots are no match for humans at the sport. Furthermore, certain kinds of formal logic, though once considered to be the pinnacle of human intellect, are actually fairly simple for computers. Thus, we should let computers do what they do best: calculate. We humans have the job of deciding which calculations the computers should perform, interpreting what the results mean, and deciding how the new information should be used.

Most introductory psychometrics textbooks are designed to help researchers create well constructed tests and therefore cover many details that are not useful to clinicians and fail to cover many practical issues that clinicians should know about. This book is intended to help you extract useful information from the data you already have in ways that you may not have known were possible. That my emphasis is on the practical in no way implies that this book is dumbed down. My aim is to make psychometrics useful to clinicians. If some useful ideas are complex, I hope to make them accessible---but without resorting to superficial glossing. Some background knowledge of psychometrics is necessary to understand how these tools work and, more importantly, when their underlying assumptions have been violated.

<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="Philley2.png" alt="Philip Ley (1933--2015)&lt;br&gt;[Image Credit](https://thepsychologist.bps.org.uk/phil-ley-1933-2015)" width="328"  />
<!--
<p class="caption marginnote">-->(\#fig:philipley)Philip Ley (1933--2015)<br>[Image Credit](https://thepsychologist.bps.org.uk/phil-ley-1933-2015)<!--</p>-->
<!--</div>--></span></p>


This book probably never would have been written had I not several years ago stumbled across Ley's [-@ley1972quantitative]  *Quantitative aspects of psychological assessment*. I admire the book's blend of clarity, practicality, and depth. Why did I write my own book instead of recommending that clinicians download and use Ley's book? Well, I do recommend reading Ley's book. In contrast to my approach, Ley often takes time to gently lay out mathematical proofs of many ideas. Thus Ley's book is a wonderfully beginner-friendly introduction to the often considerably less accessible corpus of academic writings on psychometrics. I wanted to present much of the same material but with more of an eye to application. I also wanted to present many ideas not included in Ley's book. In addition, I chose to write this book because I believe that Ley had the right idea but that in an era in which no one had a home computer, few clinicians would have the knowledge, motivation, and stamina to use his equations on a regular basis. Now that computers are used by all clinicians, equations like those presented by Ley can be be made easy to use. All of the "tools" in this toolkit have been made into computer programs which can be downloaded for free at my website:

http://assessingpsyche.com

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
## Geometric Distributions}
## Probability Density Functions {#sec:pdf}
## Continuous Uniform Distributions {#sec:Uniform}
### Generating random samples from the continuous uniform distribution
### Using the continuous uniform distribution to generate random samples from other distributions
## Normal Distributions {#sec:normal}
### Notation for Normal Variates
## Half-Normal Distribution

<!--chapter:end:03-Distributions.Rmd-->


# Descriptive Statistics

Placeholder


## Frequency Distribution Tables
### Frequency Distribution Tables in R
## Measures of Central Tendency
### Mode
### Median
### Mean
## Expected Values
## Measures of Variability
### Variability of Nominal Variables

<!--chapter:end:04-Descriptive-Statistics.Rmd-->


# Notation {-}

Placeholder


## Random variables, vectors, and matrices
## Sets and intervals
## Summation 
## Other 

<!--chapter:end:20-notation.Rmd-->


# References {-}

Placeholder


## R packages used in this book {-}

<!--chapter:end:99-references.Rmd-->

