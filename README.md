
<!-- README.md is generated from README.Rmd. Please edit that file -->

# aperol <img src="man/figures/logo.png" align="right" height="138" alt="" />

A joke package, based on
[this](https://fosstodon.org/@kellybodwin/112769186345818866) mastodon
thread, started by Kelly Bodwin and Shannon Pileggi, and specifically
the replies by [Nick](https://aus.social/@njtierney/112770398923583882)
and [Ella](https://fosstodon.org/@ellakaye/112771757956362352).

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
#> [1] "You cheerfully are mathematical!"
```

``` r
tipsy(2, "${Exclamation}! ${EXCLAMATION}!-${EXCLAMATION}! This is just ${adjective}!")
#> [1] "Yahoo! impeccable! COWABUNGA!-YAHOO! is just This"
```

``` r
drunk()
#> [1] "are miraculous! miraculous! justly You"
```

``` r
drunk(2, 3, "You are ${creating} a ${adverb} ${adjective} ${rpackage}")
#> [1] "are unique package a R are beautifully unique You are building unique"
```

## The hex

The hex for the package (created by Kelly Bodwin) is so good that here
it is in its full-sized glory.

<img src=aperol_hex.png width="600">
