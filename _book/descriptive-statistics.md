--- 
title: "Practical Psychometrics: A Psychological Assessment Toolkit"
author: "W. Joel Schneider"
date: "2021-03-09"
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
github-repo: wjschne/toolkit
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
## The Student's *t* Distribution

<!--chapter:end:03-Distributions.Rmd-->



# Descriptive Statistics

When we encounter large lists of unsorted numbers, we have no natural capacity to perceive the list's fundamental characteristics such its average or its variability. Therefore, we need [descriptive statistics]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">**Descriptive statistics** summarize noteworthy characteristics of samples.</span> to quantify salient characteristics of distributions, or we need to display the numbers in a plot, making them easier to understand and communicate.

## Frequency Distribution Tables

A simple way to describe a distribution is to list how many times each value in the distribution occurs. For example, in this distribution: $\{10, 3, 4, 10, 6, 4, 6, 4\}$, there is 1 three, 3 fours, 2 sixes, and 2 tens. The value that occurs most often is four. A [frequency distribution table]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **frequency distribution table** summarises a sample by showing the frequency counts of each member of the sample space.</span> displays the number of times each value occurs, as in Table&nbsp;\@ref(tab:frequencydistributiontable).


Table: (\#tab:frequencydistributiontable)Frequency Distribution Table<br>The median is 5, halfway between the two middle scores of 4 and 6.

| $X$| Frequency| Cumulative<br>Frequency| Proportion| Cumulative<br>Proportion|
|---:|---------:|-----------------------:|----------:|------------------------:|
|   3|         1|                       1|       .125|                     .125|
|   4|         3|                       4|       .375|                     .500|
|   6|         2|                       6|       .250|                     .750|
|  10|         2|                       8|       .250|                        1|

It is common to include alongside the frequencies of each value the proportion (or percentage) of times a value occurs. If the frequency of sample space element $i$ is $f_i$, and the total sample size is $n$, then the proportion of sample space element $i$ is

$$p_i = \frac{f_i}{n}$$

In Table&nbsp;\@ref(tab:frequencydistributiontable), the frequency of sixes is $f=2$ and there are $n = 8$ numbers in the distribution, thus the proportion of sixes is $p = \frac{2}{8} = .25$.

It is also common to supplement frequency distribution tables with additional information such as the [cumulative frequency]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">The **cumulative frequency** tells us the number of scores in a distribution that are equal to or lower than a particular sample space element.</span>. For each sample space element, the cumulative frequency $(cf)$ is the sum of the frequencies $(f)$ of the current and all previous sample space elements.

$$cf_i= \sum_{j=1}^{i}{f_j}$$

Ordinal, interval, and ratio variables can have cumulative frequencies, but not nominal variables. To calculate cumulative frequencies, the sample space needs to be sorted in a meaningful way, which is not possible with true nominal variables. That is, there are no scores "below" any other scores in nominal variables.

The cumulative proportion ($cp$) is the proportion of scores less than or equal to a particular sample space element.

$$cp_i = \frac{cf_i}{n}$$

### Frequency Distribution Tables in R

Let's start with a data set from @garcia2010women, which can accessed using the psych package [@R-psych].


```r
# Get the Garcia data set from the psych package
d <- psych::Garcia
```

The sjmisc package [@R-sjmisc] provides a quick and easy way to create a frequency distribution table with the `frq` function.


```
## 
## x <numeric>
## # total N=129  valid N=129  mean=2.12  sd=1.66
## 
## Value |  N | Raw % | Valid % | Cum. %
## -------------------------------------
##     1 | 73 | 56.59 |   56.59 |  56.59
##     2 | 24 | 18.60 |   18.60 |  75.19
##     3 |  4 |  3.10 |    3.10 |  78.29
##     4 |  8 |  6.20 |    6.20 |  84.50
##     5 | 12 |  9.30 |    9.30 |  93.80
##     6 |  7 |  5.43 |    5.43 |  99.22
##     7 |  1 |  0.78 |    0.78 | 100.00
##  <NA> |  0 |  0.00 |    <NA> |   <NA>
```

Typically we use frequency distribution tables to check whether the values of a variable are correct and that the distribution makes sense to us. Thus the `frq` function is all we need most of the time. However, if you need a publication-ready frequency distribution table, you will probably have to make it from scratch (See Table&nbsp;\@ref(tab:freqtablepub)).


Table: (\#tab:freqtablepub)Frequency Distribution Table for Anger<br>
        *f* = Frequency, *cf* = Cumulative Frequency
        , *p* = Proportion, and *cp* = Cumulative Proportion

| Anger| *f*| *cf*| *p*| *cp*|
|-----:|---:|----:|---:|----:|
|     1|  73|   73| .57|  .57|
|     2|  24|   97| .19|  .75|
|     3|   4|  101| .03|  .78|
|     4|   8|  109| .06|  .84|
|     5|  12|  121| .09|  .94|
|     6|   7|  128| .05|  .99|
|     7|   1|  129| .01| 1.00|


<div class="wrap-collapsible" style="margin-top: 1em">
<input id="collapsible-freqtablepub" class="toggle" type="checkbox">
<label for="collapsible-freqtablepub" class="lbl-toggle">R Code</label>
<div class="collapsible-content">
<div class="content-inner">


```r
# Publication-quality frequency table
d %>% 
  rename(Anger = anger) %>% 
  count(Anger, name = "f") %>% 
  mutate(cf = cumsum(f),
         p = f / sum(f),
         cp = cumsum(p)) %>% 
  mutate(across(.cols = p:cp, 
                .fns = function(x) scales::number(x, .01) %>% 
                  str_remove("^0"))) %>% 
  rename_with(.fn = function(x) paste0("*",x,"*"), .cols = -Anger) %>% 

  kable(caption = "Frequency Distribution Table for Anger<br>
        *f* = Frequency, *cf* = Cumulative Frequency
        , *p* = Proportion, and *cp* = Cumulative Proportion", 
        digits = 2, align = "r")
```

</div></div></div>

### Frequency Distribution Bar Plots



<div class="figure" style="text-align: center">
<p class="caption">(\#fig:freqbarplot)Frequency Distribution Bar Plot</p><img src="toolkit_files/figure-html/freqbarplot-1.svg" alt="Frequency Distribution Bar Plot"  /></div>

<div class="figure" style="text-align: center">
<p class="caption">(\#fig:freqstepplot)Cumulative Frequency Step Plot</p><img src="toolkit_files/figure-html/freqstepplot-1.svg" alt="Cumulative Frequency Step Plot"  /></div>


<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="toolkit_files/figure-html/unnamed-chunk-1-1.svg" alt="Cumulative Frequency Stacked Bar Plot"  />
<!--
<p class="caption marginnote">-->(\#fig:unnamed-chunk-1)Cumulative Frequency Stacked Bar Plot<!--</p>-->
<!--</div>--></span></p>


## Measures of Central Tendency

### Mode

The [mode]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">The **mode** is the value in a distribution that occurs most often.</span> is the most frequent score in a distribution. Suppose we have a distribution that looks like this: 

$$\{1,2,2,2,2,3,3\}$$

Because 2 occurs more frequently than the other values in the distribution, the mode is 2. 



In a frequency distribution table, the mode is the value with the highest value in the $f$ (frequency) column. In Table&nbsp;\@ref(tab:freqtablepub), the mode is 1 because it has the highest frequency (&#8239;*f*&nbsp;=&nbsp;73). 

In a histogram or probability density plot, the mode is the value that corresponds to the highest point in the plot. If two values tie, both values are the mode and the distribution is [bimodal]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **bimodal** distribution has two modes.</span>. Sometimes a distribution has two distinct clusters, each with its own local mode. The greater of these two modes is the *major mode*, and the lesser is the *minor mode* (See Figure&nbsp;\@ref(fig:bimodal)).

<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="toolkit_files/figure-html/bimodal-1.svg" alt="A bimodal distribution"  />
<!--
<p class="caption marginnote">-->(\#fig:bimodal)A bimodal distribution<!--</p>-->
<!--</div>--></span></p>


<div class="wrap-collapsible" style="margin-top: 1em">
<input id="collapsible-bimodal" class="toggle" type="checkbox">
<label for="collapsible-bimodal" class="lbl-toggle">R Code</label>
<div class="collapsible-content">
<div class="content-inner">


```r
# A bimodal distribution
tibble(x = seq(-3, 3.5, .01),
       y = dnorm(x, -1, 0.5) / 0.8 + dnorm(x, 1, 0.75)) %>% 
  ggplot(aes(x, y)) + 
  geom_area(fill = myfills[1]) +
  geom_text(data = . %>% dplyr::filter(x == -1), 
            vjust = -0.25, 
            label = "Major\nMode", 
            size = 8, 
            lineheight = 0.9) +
  geom_text(data = . %>% dplyr::filter(x == 1), 
            vjust = -0.25, 
            label = "Minor\nMode", 
            size = 8, 
            lineheight = 0.9) +
  scale_x_continuous(NULL, minor_breaks = NULL, breaks = seq(-3, 3)) +
  scale_y_continuous(NULL, breaks = NULL, expand = expansion(c(0,.25))) + 
  theme_minimal(base_size = 30, base_family = bfont) + 
  theme(panel.grid.major.x = element_blank()) 
```

</div></div></div>

To compute the mode of a variable, use the `mfv` (most frequent value) function from the modeest package [@R-modeest]:


```r
library(modeest)
mfv(c(1,2,2,2,2,3,3))
```

```
## [1] 2
```


### Median

The [median]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">The **median** is the point that divides the lower 50 percent of a distribution from the upper 50 percent.</span> is midpoint of a distribution, the point that divides the lower half of the distribution from the upper half. To calculate the median, you first need to sort the scores. If there is an odd number of scores, the median is the middle score. If there an even number of scores, it is the mean of the two middle scores. There are other definitions of the median that are a little more complex, but rarely is precision needed for calculating the median.

To find the median using a frequency distribution table, find the first sample space element with a cumulative proportion greater than 0.5. For example, in the distribution shown in Table&nbsp;\@ref(tab:mediantable), the first cumulative proportion greater than 0.5 occurs at 5, which is therefore the median.


Table: (\#tab:mediantable)Finding the Median in a Frequency Distribution Table.<br>In this case, the median if 5 because it has the first cumulative proportion that is greater than 0.5.

| *X*| Frequency| Cumulative Frequency| Proportion| Cumulative Proportion|
|---:|---------:|--------------------:|----------:|---------------------:|
|   1|         1|                    1|        .14|                   .14|
|   5|         3|                    4|        .43|                   .57|
|   7|         1|                    5|        .14|                   .71|
|   9|         2|                    7|        .29|                  1.00|

If a sample space element's cumulative proportion is exactly 0.5, average that sample space element with the next highest value. For example, in the distribution in Table&nbsp;\@ref(tab:frequencydistributiontable), the cumulative proportion for 4 is exactly 0.5 and the next value is 6. Thus the median is $\frac{4+6}{2}=5$.

The median can be computed for ordinal, interval, and ratio variables, but not for nominal variables. Because they have no order, nominal variables have no middle score.

The `median` function can compute the median:


```r
median(c(1,2,3))
```

```
## [1] 2
```


### Mean

The [arithmetic mean]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">The **arithmetic mean** is the balance point of a disribution.</span> is the sum of all values of a distribution divided by the size of the distribution.

$$\mu_X = \frac{\sum_{i = 1}^n {X_i}}{n}$$

Where \begin{align*}
  \mu_X &= \text{The population mean of } X\\
  n &= \text{The number of values in } X
\end{align*}

The arithmetic mean can only be calculated with interval or ratio variables. Why? The formula for the mean requires adding numbers, and the operation of addition is not defined for ordinal and nominal values.

The arithmetic mean is usually the preferred measure of central tendency for interval and ration variables because it is usually more stable from sample to sample than the median and the mode.




Table: (\#tab:proconCT)Comparing Central Tendency Measures

|Feature                           |Mode   |Median  |Mean     |
|:---------------------------------|:------|:-------|:--------|
|Standard Error                    |Larger |Smaller |Smallest |
|Algebraic Formula                 |No     |No      |Yes      |
|Unique Value                      |No     |Yes     |Yes      |
|Sensitive to Outliers/Skewness    |No     |No      |Yes      |
|Computable for Nominal Variables  |Yes    |No      |No       |
|Computable for Ordinal Variables  |Yes    |Yes     |No       |
|Computable for Interval Variables |Yes    |Yes     |Yes      |
|Computable for Ratio Variables    |Yes    |Yes     |Yes      |

## Expected Values

At one level, the concept of the [expected value]{.defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">The **expected value** of a random variable is the population mean of the values that the random variable generates.</span> of a random variable is really simple; it is just the population mean of the variable. So why don't we just talk about population means and be done with this "expected value" business? It just complicates things! True. In this case, however, there is value in letting some simple things appear to become complicated for a while so that later we can show that some apparently complicated things are actually simple.

Why can't we just say that the expected value of a random variable is the population mean? You are familiar, of course, with the formula for a mean. You just add up the numbers and divide by the number of numbers $n$:

$$
m_X=\frac{\sum_{i=1}^{n} {x_i}}{n}
$$

Fine. Easy. Except...hmm...random variables generate an infinite number of numbers. Dividing by infinity is tricky. We'll have to approach this from a different angle...

The expected value of a random variable is a weighted mean. A mean of what? Everything in the sample space. How are the sample space elements weighted? Each element in the sample space is multiplied by its probability of occurring.

<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="toolkit_files/figure-html/pmfX-1.svg" alt="Probability distribution of a hypothetical random variable"  />
<!--
<p class="caption marginnote">-->(\#fig:pmfX)Probability distribution of a hypothetical random variable<!--</p>-->
<!--</div>--></span></p>

Suppose that the sample space of a random variable $X$ is $\{2, 4, 8\}$ with respective probabilities of $\{0.3, 0.2, 0.5\}$, as shown in Figure \@ref(fig:pmfX). The notation for taking the expected value of a random variable $X$ is $\mathcal{E}(X)$. Can we find the mean of this variable $X$ even if we do not have any samples it generates? Yes. To calculate the expected value of $X$, multiply each sample space element by its associated probability and then take the sum of all resulting products. Thus,

$$
\begin{align*}
\mathcal{E}(X)&=\sum_{i=1}^{3}{p_i x_i}\\
&= p_1x_1+p_2x_2+p_3x_3\\
&= (.3\times 2)+(.2\times 4)+(.5\times 8)\\
&=5.4
\end{align*}
$$


The term *expected value* might be a little confusing. In this case, 5.4 is the expected value of $X$ but $X$ never once generates a value of 5.4. So the expected value is not "expected" in the sense that we expect to see it often. It is expected to be close to the mean of any randomly selected sample of the variable that is sufficiently large:

$$
\mathcal{E}(X)=\lim_{n \to \infty} \frac{1}{n}\sum_{i=1}^{n} {x_i}
$$

If a random variable $X$ is discrete, its expected value $\mathcal{E}(X)$ is the sum of each member of the sample space $x_i$ multiplied by its probability of occurring $p_i$. The probability of occurring is the output of $X$'s probability density function at that location ($p_i=f_X(x_i)$. Thus,

$$
\mathcal{E}(X)=\sum_{i=-\infty}^{\infty}{x_i f_X(x_i)}
$$

With continuous variables, the number of elements in a sample is infinite. Fortunately, calculus was designed to deal with this kind of infinity. The trick is to imagine that the continuous variable is sliced into bins and that the bins are sliced ever more thinly. If a continuous random variable has probability density function $f_X(x)$, the expected value is

$$
\mathcal{E}(X)=\int_{-\infty}^{\infty} {x f_X(x)\,\mathrm{d}x}
$$


If we multiply each value of $X$ by the height of its bin ($p$), we get the mean of the binned distribution. If the bins become ever thinner, as in Figure \@ref(fig:thinbins), the product of $X$ and $p$ approximates the expected value of the smooth continuous distribution.

<div class="figure" style="text-align: center">
<img src="toolkit_files/figure-html/thinbins-1.svg" alt="Slicing the standard normal distribution into ever thinner bins" width="100%"  />
<p class="caption marginnote shownote">(\#fig:thinbins)Slicing the standard normal distribution into ever thinner bins</p>
</div>



<div class="wrap-collapsible" style="margin-top: 1em">
<input id="collapsible-thinbins" class="toggle" type="checkbox">
<label for="collapsible-thinbins" class="lbl-toggle">R Code</label>
<div class="collapsible-content">
<div class="content-inner">


```r
# Slicing the standard normal distribution into ever thinner bins
make_bins <- function(binPower, binWidth, LowerBound, UpperBound) {
  tibble(x = seq(LowerBound, UpperBound, binWidth), binPower, binWidth)
}

pmap_df(tibble(binPower = -1:4, 
               binWidth = 2 ^ (-1 * binPower), 
               LowerBound = -4, 
               UpperBound = 4), 
        make_bins) %>% 
  mutate(p = pnorm(x + binWidth / 2) - pnorm(x - binWidth / 2),
         width_label = factor(2 ^ binPower, 
                              levels = 2 ^ (-1:4),
                              labels = c("Width = 2", "Width = 1",
                                         paste0("Width = 1/",
                                                2 ^ (1:4))))) %>%
  ggplot(aes(x, p)) + 
  geom_col(aes(width = binWidth), 
           fill = myfills[1], 
           color = "white", 
           lwd = 0.1) + 
  facet_grid(width_label ~ .,  
             scales = "free") + 
  theme_light(base_size = 24, 
              base_family = bfont) + 
  scale_x_continuous(NULL, 
                     breaks = -4:4, 
                     labels = function(x) signs::signs(x, accuracy = 1),
                     # labels =  paste0(if_else(-4:4 < 0,"−",""), abs(-4:4)),
                     # sec.axis = dup_axis(),
                     expand = c(0.01,0)) + 
  scale_y_continuous(NULL, 
                     breaks = NULL) +
  theme(panel.grid = element_blank(), 
        # strip.text.y = element_blank(), 
        strip.placement = "outside",
        strip.text.y = element_text(angle = 0),
        axis.text.x = element_text(hjust = c(rep(.75,4),rep(0.5,5))))
```

</div></div></div>

## Measures of Variability

### Variability of Nominal Variables

For most purposes, the visual inspection of a frequency distribution table or bar plot is all that is needed to understand a nominal variable's variability.

I have never needed a statistic that measures the variability of a nominal variable, but if you need one, there are [many from which to choose](https://en.wikipedia.org/wiki/Qualitative_variation). For example, @Wilcox1973 presented this analog to variance for nominal variables:

$$
\text{VA} = 1-\frac{1}{n^2}\frac{k}{k-1}\sum_{i=1}^k\left(f_i-\frac{n}{k}\right)^2
$$

The qualvar package [@R-qualvar] can compute the primary indices of qualitative variation presented by Wilcox.


```r
library(qualvar)

# Frequencies
frequencies =  c(A = 60, B = 10, C = 25, D = 5)

# VA
VA(frequencies)
```

```
## [1] 0.7533333
```


<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="toolkit_files/figure-html/nominalvar-1.svg" alt="The Variance Analog (VA) index of qualitative variation ranges from 0 to 1. It equals 0 when every data point is assigned to the same category and 1 when each category has the same frequency."  />
<!--
<p class="caption marginnote">-->(\#fig:nominalvar)The Variance Analog (VA) index of qualitative variation ranges from 0 to 1. It equals 0 when every data point is assigned to the same category and 1 when each category has the same frequency.<!--</p>-->
<!--</div>--></span></p>


<div class="wrap-collapsible" style="margin-top: 1em">
<input id="collapsible-nominalvarCode" class="toggle" type="checkbox">
<label for="collapsible-nominalvarCode" class="lbl-toggle">R Code</label>
<div class="collapsible-content">
<div class="content-inner">


```r
low_var <- c(A = 100, B = 0, C = 0, D = 0)
mid_var =  c(A = 60, B = 10, C = 25, D = 5)
high_var = c(A = 25, B = 25, C = 25, D = 25)


tibble(Variability = c("Low", "Middle", "High"),
       Frequency = list(low_var, mid_var, high_var),
       VA = map_dbl(Frequency, VA)) %>% 
  mutate(Frequency = map(Frequency, function(d) as.data.frame(d) %>% 
                           tibble::rownames_to_column("Category")),
         Variability = paste0(Variability, 
                              "\nVA = ", 
                              prob_label(VA)) %>% 
           fct_inorder()) %>% 
  unnest(Frequency) %>%  
  rename(Frequencies = d) %>% 
  ggplot(aes(Category, Frequencies)) +
  geom_col(aes(fill = Variability)) + 
  geom_text_fill(aes(label = Frequencies), 
             vjust = -.3, 
             color = "gray30", 
             size = ggtext_size(30)) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.08)), 
                     breaks = seq(0,100,20), 
                     minor_breaks = seq(0,100,10)) +
  scale_fill_manual(values = myfills) +
  facet_grid(cols = vars(Variability)) + 
  theme_light(base_family = bfont, base_size = 30) + 
  theme(panel.grid.major.x = element_blank(), 
        legend.position = "none")
```

</div></div></div>

In all of these indices of qualitative variation, the lowest value is 0 when every data point belongs to the same category (See Figure&nbsp;\@ref(fig:nominalvar), left panel). Also, the maximum value is 1 when the data points are equally distributed across categories (See Figure&nbsp;\@ref(fig:nominalvar), right panel).

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

Placeholder


## R packages used in this book {-}

<!--chapter:end:99-references.Rmd-->

