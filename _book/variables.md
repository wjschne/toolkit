--- 
title: "Practical Psychometrics: A Psychological Assessment Toolkit"
author: "W. Joel Schneider"
date: "2021-02-24"
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
biblio-style: apalike
csl: apa.csl
github-repo: wjschne/psychtoolkit
---

# Preface {-}

Placeholder



<!--chapter:end:index.Rmd-->

# Introduction {#intro}

Although great painters can make good art with cheap brushes, they need high quality tools to work at the upper limits of their craft. On the other hand, giving an untrained person an expensive set of brushes is unlikely to result in noticeably better art. So it is with these tools. They are of little use to unprepared hands---and in foolish hands, they might even be dangerous. But in hands caring and competent, they can make reasoning more rigorous, results more robust, and recommendations more relevant.

We can choose to spend assessment time and resources wisely in a comprehensive psychological assessment, but interviews, test administration, and behavioral observations necessarily take many hours of focused concentration. Scoring tests and integrating test information can take even more time. Then there is the considerable task of actually writing the report.^[Putting together my first psychological evaluation report one summer in Texas, I labored, fretted, and sweated for more than 30 hours! Even now, at my fastest, it still takes me at least 3 hours of uninterrupted work to write what I consider to be a good report.] Finally, the results of the report are presented to the client and other decision-makers. If we invest this much time and effort in the process, it makes sense to make the most of it. Unfortunately, while making the most of it, it is easy to go too far---making reckless recommendations from iffy inferences and flights of fancy.

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






Because there are so many different kinds of [variables]{class=defword},<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **variable** is an abstract category of information that can take on different values.</span> it is helpful to classify them by type so that we can think clearly about them and not use them incorrectly.  Some statistics only make sense with certain types of variables. To take a famously silly example from @zacharias1975trouble, you could calculate the average number in a telephone directory, but you wouldn't try calling it. The mean has no meaning for this kind of variable. Unfortunately, it is not always so obvious which statistics can be applied to which variables. If we unknowingly apply the wrong kind of statistic to a variable, our statistical software will give us a result *but we will not know that it is nonsense*.

The classic [taxonomy]{class=defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **taxonomy** is a classification system.</span> for variable types [@stevens1946theory] distinguishes among nominal, ordinal, interval, and ratio scales (Figure&nbsp;\@ref(fig:Stevens)). Although it is clear that this taxonomy is incomplete [@cicchetti2006rating], there is no consensus about how exactly the list should be amended. If this book were about how to design psychological tests, we would explore this topic in depth. For our purposes, it is enough to say that the fundamentals of measurement and [scaling]{class=defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">**Scaling** refers to the procedures by which we decide how to assign numbers to the attributes we measure.</span> is philosophically complex and that controversies abound [@michell1997quantitative]. 

<div class="figure" style="text-align: center">
<p class="caption">(\#fig:Stevens)Stevens' levels of measurement</p><img src="Stevens.svg" alt="Stevens' levels of measurement" width="672"  /></div>


<div class="wrap-collapsible">
<input id="collapsible" class="toggle" type="checkbox">
<label for="collapsible" class="lbl-toggle">$\rm\LaTeX~Code$</label>
<div class="collapsible-content">
<div class="content-inner">

```tikz

% Stevens NOIR
\documentclass[tikz = true, border = 1pt]{standalone}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{tikz}
\usetikzlibrary{positioning, calc}
\usetikzlibrary{intersections}
\usetikzlibrary{decorations.pathreplacing}
\usetikzlibrary{decorations.text}
\usetikzlibrary{arrows,shapes,backgrounds, shadows,fadings}
\usepackage{fontspec}
\setmainfont{Equity Text A}[SmallCapsFont={Equity Caps A}]
\begin{document}
	\begin{tikzpicture}[scale=0.9,text height=1.5ex,text depth=.25ex,post/.style={->,draw,shorten >=4pt,shorten <=4pt,>=latex', very thick, font=\large}]
	\node (h) at (2.3, 0) {};
	\node (v) at (0,0.8) {};
	\node (Nominal) at (1, 2) {\textsc{Nominal}};
	\node (Ordinal) at ($(Nominal)+(h)$) {\textsc{Ordinal}};
	\node (Interval) at ($(Nominal)+2*(h)$) {\textsc{Interval}};
	\node (Ratio) at ($(Nominal)+3*(h)$) {\textsc{Ratio}};
	\node (Equality) at ($(Nominal)-3*(v)$) {$=\ne$};
	\node (LessMore) at ($(Ordinal)-3*(v)$) {$<>$};
	\node (PlusMinus) at ($(Interval)-3*(v)$) {$+-$};
	\node (MultiplyDivide) at ($(Ratio)-3*(v)$) {$\times\div$};
	\node [text width=2cm,text centered] (Mutual) at ($(Nominal)-1.5*(v)$) {Distinct Categories};
	\node [text width=2cm,text centered] (Order) at ($(Ordinal)-1.5*(v)$) {Ordered Categories};
	\node [text width=2cm,text centered] (Distance) at ($(Interval)-1.5*(v)$) {Meaningful Distances};
	\node [text width=2cm,text centered] (Magnitude) at ($(Ratio)-1.5*(v)$) {Absolute\\ Zero};
	\node [color=red] (Level) at ($(Nominal)-1.2*(h)$) {\textbf{Level}};
	\node [text width=2cm,text centered, color=red] (Feature) at ($(Level)-1.5*(v)$) {\textbf{Defining Feature}}; 
	\node [color=red] (Operation) at ($(Level)-3*(v)$) {\textbf{Operations}}; 
	\draw[decoration={brace,amplitude=3mm}, decorate] (Nominal.north) -- (Ordinal.north) node[midway,above=3mm] (Categorical) {Categorical};
	\draw[decoration={brace,amplitude=3mm}, decorate] (Interval.north) -- (Ratio.north) node[midway,above=3mm] (Quantitative) {Quantitative};
	\draw[decoration={brace,amplitude=3mm}, decorate] (Categorical.north) -- (Quantitative.north) node[midway,above=3mm] (Variable) {Variable};
	\end{tikzpicture}
\end{document}
```
</div>
</div>
</div>





## Nominal Scales {#nominal}

In a [nominal scale]{class=defword},<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **nominal scale** groups observations into unordered categories.</span> we note only that some things are different from others and that they belong to two or more </span>[mutually exclusive]{class=defword} categories. <label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">In **mutually exclusive** categories nothing belongs to more than one category (at the same time and in the same sense).</span> If we say that a person has Down syndrome (trisomy 21), we are implicitly using a nominal scale in which there are people with Down syndrome and people without Down syndrome. In a true nominal scale, there are no cases that fall between categories. To be sure, we might have some difficulty figuring out and reliably agreeing upon the category to which something belongs---but there is no conceptual space between categories.

In the messy world of observable reality, few true nominal variables exist as defined here. Most so-called nominal variables in psychology are merely nominal-*ish*. With respect to Down syndrome, we could say that people either have three copies of the 21^st^ chromosome or they do not. However, if we did say that---and meant it---we'd be wrong. In point of fact, there are many cases of partial trisomy. There are other cases of Down syndrome in which part of chromosome 21 is copied to another chromosome. However, because cases like this are sufficiently rare and because such distinctions are usually not of vital importance, Down Syndrome is treated as if it were a true nominal variable. Even though Down Syndrome might technically come in degrees (both phenotypically and in terms of the underlying chromosomal abnormalities), the distinction between not having the condition and not having it is not [arbitrary]{class=defword}.<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">**Arbitrary** refers to things that are decided not by necessity but by preference, convenience, or whim.</span> 

<div class="figure" style="text-align: center">
<p class="caption">(\#fig:dichomomy)A (nearly) true dichotomy</p><img src="dichotomy.svg" alt="A (nearly) true dichotomy" width="672"  /></div>



<div class="wrap-collapsible">
<input id="collapsible1" class="toggle" type="checkbox">
<label for="collapsible1" class="lbl-toggle">$\rm\LaTeX~Code$</label>
<div class="collapsible-content">
<div class="content-inner">



```tikz
\documentclass[tikz = true, border = 3pt]{standalone}
\usepackage[latin1]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{tikz}
\usetikzlibrary{positioning, calc}
\usetikzlibrary{intersections}
\usetikzlibrary{decorations.pathreplacing}
\usetikzlibrary{decorations.text}
\usetikzlibrary{arrows,shapes,backgrounds, shadows,fadings}
\begin{document}
	\begin{tikzpicture}
    [node distance=1cm and 1cm, 
post/.style={->,draw,shorten >=2pt,shorten <=2pt,>=latex', thick, font=\large}, 
    ob/.style={rectangle,inner sep=1mm, minimum width=2.5cm, minimum height=2.5cm, rounded corners=1mm,font=\large, text = white}]
    \definecolor{firebrick2}{RGB}{205,38,38};
    \definecolor{royalblue2}{RGB}{67,110,238};
    \node [ob,fill=violet!80] (All) at (0,0) {\begin{tabular}{c} All\\Children\end{tabular}};
    \node (Trisomy) [shape=diamond, below= of All,fill=black!60,shape aspect=1.5, text = white, font = \large] {Trisomy 21?};
    \node [ob,fill=firebrick2,left=of Trisomy] (Down) {\begin{tabular}{c} Down\\Syndrome\end{tabular}};
    \node [ob,fill=royalblue2, right=of Trisomy] (NoDown) {\begin{tabular}{c} No Down\\Syndrome\end{tabular}}; 
    \draw[post] (All) to (Trisomy);
    \draw[post] (Trisomy) -- (Down) node [midway,above] {Yes};
    \draw[post] (Trisomy) -- (NoDown) node [midway,above] {No};
\end{tikzpicture}
\end{document}

```


</div>
</div>
</div>


<div class="figure" style="text-align: center">
<p class="caption">(\#fig:dichotomous)A dichomized continuum</p><img src="toolkit_files/figure-html/dichotomous-1.svg" alt="A dichomized continuum"  /></div>

<div class="wrap-collapsible">
<input id="collapsible2" class="toggle" type="checkbox">
<label for="collapsible2" class="lbl-toggle">R Code</label>
<div class="collapsible-content">
<div class="content-inner">



```r
par(mar = c(2.5, 0, 0, 0), 
    family = "Equity Text A Tab",
    mgp = c(1.5, 0.25, 0),
    tcl = -0.3,
    cex = 1.2)
cord.x <- c(-4, seq(-4,-2, 0.01),-2)
cord.y <- c(0, 0.9 * dnorm(seq(-4,-2, 0.01)), 0)
curve(
  dnorm(x, 0, 1) * .9,
  xlim = c(-4, 4),
  axes = F,
  xlab = "IQ and Adaptive Functioning",
  ylab = "",
  ylim = (c(0, .43)),
  col = NA
)
polygon(cord.x, cord.y, col = "firebrick2", border = NA)
cord.x <- c(-2, seq(-2, 4, 0.01), 4)
cord.y <- c(0, 0.9 * dnorm(seq(-2, 4, 0.01)), 0)
polygon(cord.x, cord.y, col = "royalblue2", border = NA)
axis(1, 
     at = seq(-4, 4, 1), 
     line = 0,
     labels = seq(40, 160, 15))
segments(-2, dnorm(-2),-2, .4, lty = 2)
# abline(h = 0)
IDPmisc::Arrows(
  x1 = c(-2.1,-1.9),
  y1 = c(0.38, 0.38),
  x2 = c(-4, 4),
  y2 = c(0.38, 0.38),
  open = FALSE,
  sh.col = c("firebrick2", "royalblue2"),
  sh.lwd = 3,
  h.lwd = 1,
  sh.adj = 1,
  size = 0.75
)
text(-3, .38, "Intellectual\nDisability", col = "firebrick3", pos = 3, cex = 1.1)
text(0, .38, "No Intellectual\nDisability", col = "royalblue3", pos = 3, cex = 1.1)
```


</div>
</div>
</div>



In contrast, consider the diagnosis of *intellectual disability*, what has historically been called "mental retardation." We might have only two categories in our coding scheme (Intellectual Disability: Yes or No) but it is widely recognized that the condition comes in degrees (e.g., *none, borderline, mild, moderate, severe,* and *profound*). Thus, intellectual disability is not even conceptually nominal. It is a continuum that has been divided at a convenient but mostly arbitrary point (Figure&nbsp;\@ref(fig:dichotomous)). Distinguishing between a [dichotomous]{class=defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **dichotomy** is a division of something into two categories.</span> variable that is nominal by nature and one that has an underlying continuum matters because there are statistics that apply only to the latter type of variable (e.g., the tetrachoric correlation coefficient). Even so, in many procedures, the two types of dichotomies can be treated identically (e.g., comparing the means of two groups with an independent-samples *t*-test).

What if the categories in a nominal scale are not mutually exclusive? For example, suppose that we have a variable in which people can be classified as having either Down syndrome or Klinefelter syndrome (a condition in which a person has two X chromosomes and one Y chromosome). Obviously, this is a [false dichotomy]{class=defword}.<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">In a **false dichotomy**, two alternatives are presented as if they are the only alternatives when, in fact, there are others available.</span> Most people have neither condition. Thus, we need to expand the nominal variable to have three categories: Down syndrome, Klinefelter syndrome, and neither. What if a person has both Down syndrome *and* Klinefelter syndrome? Okay, we just add a fourth category: both. This combinatorial approach is not so much a problem for some purposes (e.g., the ABO blood group system), but for many variables, it quickly becomes unwieldy. If we wanted to describe all chromosomal abnormalities with a single nominal variable, the number of combinations increases exponentially with each new category added. This might be okay if having two or more chromosomal abnormalities is very rare. If, however, the categories are not mutually exclusive and combinations are common enough to matter, it is generally easiest to make the variable into two or more nominal variables (Down syndrome: Yes or no; Klinefelter syndrome: Yes or no; Edwards syndrome: Yes or no; and so forth). Some false dichotomies are so commonly used that people know what you mean, even though they are incomplete (e.g., Democrat vs. Republican) or potentially insensitive to people who do not fit neatly into any of the typical categories (e.g., male vs. female).

When we list the categories of a nominal variable, the order in which we do so is mostly arbitrary. In the variable *college major*, no major intrinsically comes before any other. It is convenient to list the categories alphabetically but the order is different in different languages and will change as the names of college majors evolve. However, strict alphabetical order is not always logical or convenient.^[For example, in a variable such as *ethnic identity*, the number of possible categories is very large so members of very small groups are given the option of writing in their answer next to the word "other." The *other* category is placed at the end of the list to avoid confusion.]

## Ordinal Scales

In an [ordinal scale]{class=defword},<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">An **ordinal scale** groups observations into ordered categories.</span> things are still classified by category but the categories have a particular order. Suppose that we are conducting behavioral observations of a child in school and we record when the behavior occurred. The precise time at which the behavior occurred (e.g., 10:38&nbsp;AM) may be uninformative. If the class keeps a fairly regular schedule, it might be more helpful to divide the day into categories such as early morning, recess, late morning, lunch, and afternoon. This way it is easy to see if behavior problems are more likely to occur in some settings (or activities) than in others. It does not matter that these divisions are of unequal lengths or that they do not occur at precisely the same time each day. In a true ordinal variable, the distance between categories is either undefined, unspecified, or irrelevant. 

<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="Likert.svg" alt="In a Likert-type scale, the distances between categories are undefined." width="300"  />
<!--
<p class="caption marginnote">-->(\#fig:Likert)In a Likert-type scale, the distances between categories are undefined.<!--</p>-->
<!--</div>--></span></p>






Most measurement in psychological assessment involves ordinal scales, though in many cases ordinal scales might appear to be other types of scales. Questionnaires that use Likert-type scales are very clearly ordinal (e.g., Figure&nbsp;\@ref(fig:Likert)). Even though true/false items on questionnaires might seem like nominal scales, they are usually ordinal because the answer indicates whether a person has either more or less of an attribute. That is, *more* and *less* are inherently ordinal concepts. Likewise, ability test items are ordinal, even though *correct* vs. *incorrect* might seem like nominal categories. Ability tests are designed such that a correct response indicates more ability than an incorrect response. The ordinal nature of ability test items is especially clear in cases that allow for partial credit. 

Some scales are only partially ordinal. For example, *educational attainment* is ordinal up to a certain point in most societies, but branches out as people acquire specialized training. For a career in psychology, the educational sequence is high school diploma, associate's degree, bachelor's degree, master's degree, and doctoral degree.^[Obviously, some of these degrees can be skipped and the endpoint is different for different careers in psychology. Furthermore, not all degrees fit neatly in this sequence (e.g., the school psychology specialist degree).] However, this is not the sequence for real estate agents, hair stylists, and pilots. If we wanted to compare educational degrees across professions, how would we rank them? For example, how would we compare a law degree with a doctorate in geology? Are they the same? Does one degree indicate higher educational attainment than the other? The answers depend on the criteria that we care about---and different people care about different things. Thus, it is difficult to say that we have an ordinal scale when we compare educational attainment across professions. 


<div class="figure" style="text-align: center">
<p class="caption">(\#fig:differentiation)Anxiety is more differentiated at higher levels of distress</p><img src="toolkit_files/figure-html/differentiation-1.svg" alt="Anxiety is more differentiated at higher levels of distress" width="672"  /></div>


<div class="wrap-collapsible">
<input id="collapsible3" class="toggle" type="checkbox">
<label for="collapsible3" class="lbl-toggle">R Code</label>
<div class="collapsible-content">
<div class="content-inner">



```r
bezierCurve <- function(x, y, n=10) {
  {
    outx <- NULL
    outy <- NULL
    
    i <- 1
    for (t in seq(0, 1, length.out = n))
    {
      b <- bez(x, y, t)
      outx[i] <- b$x
      outy[i] <- b$y
      
      i <- i + 1
    }
    
    return(list(x = outx, y = outy))
  }}
  
  bez <- function(x, y, t) {
    outx <- 0
    outy <- 0
    n <- length(x)  -  1
    for (i in 0:n)
    {
      outx <- outx + choose(n, i)  *  ((1  -  t)  ^  (n  -  i))  *  t  ^  i  *
        x[i  +  1]
      outy <-
        outy + choose(n, i)  *  ((1  -  t)  ^  (n  -  i))  *  t  ^  i  *  y[i  +
                                                                              1]
    }
    
    return(list(x  =  outx, y  =  outy))
  }
par(family = "Equity Text A Tab", 
    mar = c(4,0,0,0))  
  x <- c(0, 9, 8, 10)
  y <- c(4.85, 4.85, 3.5, 3.5)
  plot(
    x,
    y,
    "n",
    pch  =  20,
    ylim  =  c(3, 6.5),
    axes  =  F,
    xlim  =  c(0, 11.7),
    xlab  =  "",
    ylab  =  ""
  )
  lines(bezierCurve(x, y, 100), type  =  "l", col  =  "firebrick4", lwd = 2)
  text(
    x  =  rep(10.2, 4),
    y  =  seq(6.5, 3.5, -1),
    labels  =  c("Panic", "Worry", "Obsession", "Paranoia"),
    adj  =  0,
    col  =  c("royalblue4", "royalblue1", "firebrick1", "firebrick4"),
    cex = 1.2
  )
  y <- c(4.95, 4.95, 4.5, 4.5)
  lines(bezierCurve(x, y, 100), type  =  "l", col  =  "firebrick1", lwd = 2)
  y <- c(5.05, 5.05, 5.5, 5.5)
  lines(bezierCurve(x, y, 100), type  =  "l", col  =  "royalblue1", lwd = 2)
  y <- c(5.15, 5.15, 6.5, 6.5)
  lines(bezierCurve(x, y, 100), type  =  "l", col  =  "royalblue4", lwd = 2)
  axis(
    1,
    at = c(0, 2.5, 5, 7.5, 10),
    label  =  c("Low", "Mild", "Moderate", "High", "Extreme")
  )
  mtext("Distress", side = 1, line = 2.8, cex = 1.7, adj = .422)
```


</div>
</div>
</div>


Like educational attainment, many psychological traits are more differentiated at some points in the continuum than at others. For example, as seen in Figure&nbsp;\@ref(fig:differentiation), it sometimes convenient to lump the various flavors of trait anxiety together at the low and middle range of distress and then to distinguish among them at the high end. It is difficult to say who is more anxious, a person who is extremely paranoid^[Although *paranoia* is not traditionally considered a type of anxiety, it is clear that anxiety (about the possibly malevolent intentions of others) is a core feature of the trait.] or a person with a severe case of panic disorder. We can say that each is more anxious than the average person (an ordinal comparison) but each has a qualitatively different kind of anxiety. This problem is easily solved by simply talking about two different scales (paranoia and panic). However, there are different kinds of paranoia (e.g., different mixtures of hostility, fear, and psychosis) and different kinds of panic (e.g., panic vs. fear of panic). One can always divide psychological variables into ever narrower categories, making comparisons among and across related constructs problematic. At some point, we gloss over certain qualitative differences and treat them as if they were comparable, even though, strictly speaking, they are not.

## Interval Scales

With [interval scales]{class=defword}, <label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">In an **interval scale** the distance between numbers has a consistent meaning at every point on the scale.</span> not only are the numbers on the scale ordered, the distance between the numbers (i.e., intervals) is meaningful. A good example of an interval scale is the calendar year. The time elapsed from 1960 to 1970 is the same as the time elapsed from 1970 to 1980. In contrast, consider a standard Likert scale from a questionnaire. What is the distance between *disagree* and *agree*? Is it the same as the distance between *agree* and *strongly agree*? If it were, how would we know? In interval scales, all such mysteries disappear. 






<p><span class="marginnote shownote">
<!--
<div class="figure">-->
<img src="SUDS.svg" alt="Subjective units of distress may not be of equal length" width="200"  />
<!--
<p class="caption marginnote">-->(\#fig:suds)Subjective units of distress may not be of equal length<!--</p>-->
<!--</div>--></span></p>







It is not always easy to distinguish between an interval scale and an ordinal scale. Therapists sometimes ask clients to rate their distress "on a scale from 0 to 10." Probably, in the mind of the therapist, the distance between each point of the scale is equal. In the mind of the client, however, it may not work that way. In Figure&nbsp;\@ref(fig:suds), a hypothetical client thinks of the distance between 9 and 10 as much greater than the distance between 0 and 1. 

It is doubtful that any subjectively scaled measurement is a true interval scale. Even so, it is clear that some ordinal scales are more interval-like than others. Using item response theory [@embretson2000item], it is possible to sum many ordinal-level items and scale the total score such that it approximates an interval scale. It is important to note, however, that item response theory does not accomplish magic. The application of item response theory in this way is justified only if the ordinal items are measuring an underlying construct that is by nature at the interval (or ratio) level. No amount of statistical wizardry can alter the nature of the underlying construct. Sure, you can apply fancy math to the numbers, but a construct that is ordinal by nature will remain ordinal no matter what you do or convince yourself that you have done.

Most of the tools used in psychological assessment make use of ordinal scales and transform them such that they are treated as if they were interval scales. Is this defensible? Yes, a defense is possible [e.g., @borsboom2004psychometrics] but not all scholars will be convinced by it [@michell1997quantitative;@michell2008psychometrics]. As an act of faith, I will assume that most of the scales used in psychological assessment (measures of abilities, personality traits, attitudes, interests, motivation, and so forth) are close enough to interval scales that they can be treated as such. In many instances, my faith may be misplaced, but where exactly can only be determined by high quality evidence. While I await such evidence, I try to balance my faith with moderate caution.

## Ratio Scales

In a [ratio scale]{class=defword},<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **ratio scale** has a true zero, in addition to all the properties of an interval scale.</span> zero represents something special: the absence of the quantity being measured. In an interval scale, there may be a zero, but the zero is just another number in the scale. For example, 0&deg;C happens to be the freezing point of water at sea level but it does not represent the absence of heat.^[The absence of heat occurs at &minus;273.15&deg;C or 0&deg;K.] Ratio scales do not usually have negative numbers, but there are exceptions. For example, in a checking account balance, negative numbers indicate that the account is overdrawn. Still, a checking account balance is a true ratio scale because a zero indicates that there is no money in the account.

What does a true zero have to do with ratios? In interval scales, numbers can be added and subtracted but they cannot be sensibly divided. Why not? Because when you divide one number by another, you are creating a ratio. A ratio tells you how big one number is compared to another number. Well, how big is any number? The magnitude of a real number is its distance from zero (i.e., its absolute value). If zero is not a meaningful number on a particular scale, then ratios computed from numbers on that scale will not be meaningful. Therefore, because interval scales do not have a true zero, meaningful ratios are not possible. For example, although 20&deg;C is twice as far from 0&deg;C as 10&deg;C, it does not mean that 20&deg;C is twice as hot as 10&deg;C. In contrast, these types of comparisons are possible on the Kelvin scale because 0&deg;K is a true zero. That is, 0&deg;K really is twice as hot as 10&deg;K.

In psychological assessment, there are a few true ratio scales that are commonly used. Whenever anything is counted (e.g., counting how often a behavior occurs in a direct observation), it is a ratio scale. However, treating behavior counts as ration scales can be tricky. If I observe how many times a child speaks out of turn in class and I use this as an index of impulsivity, it is no longer a ratio scale. Why? The actual variable, *number of outbursts* is a true ratio variable because 0 outbursts means the absence of outbursts. However, if I use the number of outbursts as a proxy variable for *impulsivity*, then 0 outbursts probably does not indicate the absence of impulsivity. At best it indicates lower levels of impulsivity. This same problem exists for the measurement of reaction times. Reaction time is a true ratio because a reaction time of 0 means that no time has elapsed between the onset of the stimulus and the response. However, reaction time data used in clinical applications are often proxies for traits that are interval-level concepts, such as *inattention* on a continuous performance test. Why are psychological traits such as cognitive abilities, personality traits, and so forth interval-level concepts? Because we do not yet have any means of defining what, for example, zero intelligence or zero extroversion would look like. Attempts have been made [@jensen2006clocking], but they have not yet proved persuasive.

## Discrete vs. Continuous Variables {#sec:DiscreteVsContinuous}

Interval and ratio variables can be either discrete or continuous. [Discrete variables]{class=defword}<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **discrete variable** can only take on exact values from a specified list.</span> can assume some values but not others. Once the list of acceptable values has been specified, there are no cases that fall between those values. For example, the number of bicycles a person owns is a discrete variable because the variable can assume only the non-negative integers. Fractions of bicycles are not considered. Discrete variables usually take on integer values but this is not necessarily the case. 



<div class="figure" style="text-align: center">
<p class="caption">(\#fig:DiscreteContinuous)Discrete variables have gaps whereas continuous variables have none.</p><img src="DiscreteContinuous.svg" alt="Discrete variables have gaps whereas continuous variables have none." width="700"  /></div>

<div class="wrap-collapsible">
<input id="collapsible4" class="toggle" type="checkbox">
<label for="collapsible4" class="lbl-toggle">$\rm\LaTeX~Code$</label>
<div class="collapsible-content">
<div class="content-inner">

```tikz

% Discrete Continuous
\documentclass[tikz = true, border = 2pt]{standalone}

\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{tikz}
\usetikzlibrary{positioning, calc}
\usetikzlibrary{intersections}
\usetikzlibrary{decorations.pathreplacing}
\usetikzlibrary{decorations.text}
\usetikzlibrary{arrows,shapes,backgrounds, shadows,fadings}
\usepackage{fontspec}
\setmainfont{Equity Text A}[SmallCapsFont={Equity Caps A}]
\begin{document}
	
\begin{tikzpicture}[xscale=0.8]
\definecolor{firebrick2}{RGB}{205,38,38};
\definecolor{royalblue2}{RGB}{67,110,238};
\node [anchor=west] at (10.5,1) {Discrete};
\node [anchor=west] at (10.5,1.75) {Continuous};
\foreach \n in {0,...,10} {
	\node at (\n,0) {\n};
	\draw (\n,0.25)--(\n,0.45);
}
\tikzstyle{every node}=[draw=none,shape=circle,ball color=royalblue2,minimum size=1mm];
\foreach \n in {0,...,10} {
	\node at (\n,1) {};
}
\draw (0,0.45) --(10,0.45);
\tikzstyle{every node}=[draw=none,shape=circle,ball color=firebrick2,minimum size=1mm];
\node (r1) at (0,1.75) {};
\node  (r10)  at (10,1.75) {};
\draw [color=firebrick2,ultra thick] (r1.east)--(r10.west);
\end{tikzpicture}
\end{document}
```
</div>
</div>
</div>


When a variable can assume any value within a specified interval, the variable is said to be [continuous]{class=defword}.<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">A **continuous variable** can take on any value within a specified range.</span> In theory, this means that fractions and decimals can be used to achieve any level of precision that we desire. In practice, we must round the numbers at some point, technically making the variable discrete. 


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



## R packages used in this book {-}

<!--chapter:end:99-references.Rmd-->

