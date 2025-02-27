
<!-- README.md is generated from README.Rmd. Please edit that file -->

# aperol <img src="man/figures/logo.png" align="right" height="138" alt="" />

A silly package, based on
[this](https://fosstodon.org/@kellybodwin/112769186345818866) mastodon
thread, started by Kelly Bodwin and Shannon Pileggi, and specifically
the replies by [Nick
Tierney](https://aus.social/@njtierney/112770398923583882) and [Ella
Kaye](https://fosstodon.org/@ellakaye/112771757956362352).

<!-- badges: start -->
<!-- badges: end -->

**aperol** gives you praise, but as if from someone tipsy or drunk.
Specifically, it generates some praise using the
[praise](https://github.com/rladies/praise) package and garbles it.
`aperol::tipsy()` swaps a subset of words, and `aperol::drunk()` mixes
up the whole affirmation, repeating some words along the way.

As of v0.2.0, there is an `aperol::spritz()` function, which is a
wrapper to any other function (by default `devtools::check()`) which
counts how many times you call it, and offers increasingly garbled
praise, the more often you do so in a given time-frame.

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
#> [1] "You are awesome! gladly"
```

``` r
tipsy(2, "${Exclamation}! ${EXCLAMATION}!-${EXCLAMATION}! This is just ${adjective}!")
#> [1] "Whee! MMHM!-YEAHYAH! is adorable! just This"
```

``` r
drunk()
#> [1] "frankly are are superb! You"
```

``` r
drunk(2, 2:3)
#> [1] "You truthfully truthfully sterling! are are truthfully"
```

``` r
drunk(2, 2, "You are ${creating} a ${adverb} ${adjective} ${rpackage}")
#> [1] "R preparing seriously package badass are a preparing seriously You"
```

## The hex

The hex for the package (created by Kelly Bodwin) is so good that here
it is in its full-sized glory.

<img src=aperol_hex.png width="600">
