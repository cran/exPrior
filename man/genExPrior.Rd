% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function_genExPrior.R
\name{genExPrior}
\alias{genExPrior}
\title{prior using from external data}
\usage{
genExPrior(exdata, theta, niter = 10^5, range_alpha = NULL,
  seed = NULL, hierarchicalSigma = F, spatialCoordinates = F,
  verbose = F)
}
\arguments{
\item{exdata}{a dataframe containing external data to assimilate, with fields val
and site_id (see example)}

\item{theta}{a vector of numerical values of informative prior evaluation
points}

\item{niter}{(optional) an integer for the number of samples to use in the
MCMC}

\item{range_alpha}{(optional) a vector of two values corresponding to the
lower and the upper bounds of the uniform distribution for alpha}

\item{seed}{(optional) a value for the seed to make calls of genExPrior
deterministic}

\item{hierarchicalSigma}{(optional) a boolean specifying whether the
site-specific variance is defined hierarchically by an inverse-gamma
distribution (T) or by a prior (F)}

\item{spatialCoordinates}{(optional) a boolean specifying whether spatial
coordinates are provided as covariates to numerical external data. If T, the
spatial autocorrelation of external data is accounted for, assuming that the
spatial covariance has an exponential form.}

\item{verbose}{(optional) boolean indicating whether R should print
information from the progress}
}
\value{
the pdf at values corresponding to theta
}
\description{
\code{genExPrior} generates priors from a set of data from multiple sites
}
\examples{
\donttest{
theta <- seq(from=-5,to=5,by=1)
exdata <- data.frame(val=c(c(2,3,4),c(2,1),c(6,7,2,3)),
                  site_id=c(rep("a",3),rep("b",2),rep("c",4)),
                  x = c(c(2,3,4),c(2,3),c(2,2,3,3)),
                  y = c(c(2,2,3),c(3,2),c(2,3,2,3)))
genExPrior(exdata=exdata,theta=theta)
}
}
