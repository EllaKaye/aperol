% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spritz.R
\name{increment_spritz_count}
\alias{increment_spritz_count}
\title{Increment the spritz count}
\usage{
increment_spritz_count(func)
}
\arguments{
\item{func}{Character. Function to be evaluated}
}
\value{
Invisible. Data frame for spritz_count
}
\description{
Adds a row to the spritz count variable in the \code{the} environment
}
\examples{
increment_spritz_count(func = "1+1")

}
