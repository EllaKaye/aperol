% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aperol.R
\name{tipsy}
\alias{tipsy}
\title{Tipsy Praise}
\usage{
tipsy(swaps = 1, template = "You are ${adverb} ${adjective}!")
}
\arguments{
\item{swaps}{int scalar, number of word swaps to make}

\item{template}{character scalar, template for the (non-swapped) praise}
}
\description{
Generates praise with \code{\link[praise:praise]{praise::praise()}}, then swaps some words.
}
\examples{
tipsy()
tipsy(2, "You are ${creating} a ${adverb} ${adjective} ${rpackage}")

}
