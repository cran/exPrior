% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotExData.R
\name{plotExData}
\alias{plotExData}
\title{plot histogram of measurements}
\usage{
plotExData(exdata, bindwidth = NULL, xrange = NULL, ymax = NULL,
  showLegend = T)
}
\arguments{
\item{exdata}{a dataframe containing ex-situ data, as provided to the function genExPrior}

\item{bindwidth}{a numeric specifying the width of the bins (optional)}

\item{xrange}{a vector with the limits for the x-axis site}

\item{ymax}{is a numeric specifying the maximum value on the y-axis}

\item{showLegend}{a boolean indicating whether to show the legend
with the names of sites (optional, defaults to true)}
}
\value{
a plot
}
\description{
\code{plotExData} plots histogram of ex-situ data as provided to genExPrior
}
