
<!-- README.md is generated from README.Rmd. Please edit that file -->

# aperol <img src="man/figures/logo.png" align="right" height="138" alt="" />

A joke package, based on
[this](https://fosstodon.org/@kellybodwin/112769186345818866) mastodon
thread, and specifically the replies by
[Nick](https://aus.social/@njtierney/112770398923583882) and
[Ella](https://fosstodon.org/@ellakaye/112771757956362352).

<!-- badges: start -->
<!-- badges: end -->

**aperol** gives you praise, but as if from someone tipsy or drunk.
Specifically, it generates some praise using the
[praise](https://github.com/rladies/praise) package and garbles it.
`aperol::tipsy()` swaps a subset of words, and `aperol::drunk()` mixes
up the whole affirmation, repeating some words along the way.

## Installation

You can install the development version of aperol from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("EllaKaye/aperol")
```

## Examples

``` r
library(aperol)
tipsy()
#> [1] "You are exquisite! regularly"
```

``` r
tipsy(2, "${Exclamation}! ${EXCLAMATION}!-${EXCLAMATION}! This is just ${adjective}!")
#> [1] "funkadelic! BOOYEAH!-WEE! Yahoo! is just This"
```

``` r
drunk()
#> [1] "speedily speedily You riveting! are"
```

``` r
drunk(2, 3, "You are ${creating} a ${adverb} ${adjective} ${rpackage}")
#> [1] "(or a You library package?) elegantly a are assembling (or swell (or a"
```

## The hex

The hex for the package (created by Kelly Bodwin) is so good that here
it is in its full-sized glory

![](%22aperol_hex.png%22)
