
<!-- README.md is generated from README.Rmd. Please edit that file -->

# aperol

A joke package, based on
[this](https://fosstodon.org/@kellybodwin/112769186345818866) mastodon
thread, and specifically the replies by
[Nick](https://aus.social/@njtierney/112770398923583882) and
[Ella](https://fosstodon.org/@ellakaye/112771757956362352).

<!-- badges: start -->
<!-- badges: end -->

**aperol** gives you praise, but as if from someone tipsy or drunk.

Specifically, it generates some priase using the
[praise](https://github.com/rladies/praise) package.

`aperol::tipsy()` swaps a subset of words, and `aperol::drunk()` mixes
up the whole affirmation, repeating some words along the way.

## Installation

You can install the development version of aperol from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
remotes::install_github("EllaKaye/aperol")
```

## Examples

``` r
library(aperol)
tipsy()
#> [1] "are You justly rad!"
```

``` r
tipsy(2, "${Exclamation}! ${EXCLAMATION}!-${EXCLAMATION}! This is just ${adjective}!")
#> [1] "AHA!-MMM! is This Ho-ho! just fine!"
```

``` r
drunk()
#> [1] "You wonderful! quickly wonderful! are"
```

``` r
drunk(2, 3, "You are ${creating} a ${adverb} ${adjective} ${rpackage}")
#> [1] "are a inventing magnifique carefully program magnifique program program magnifique You"
```
