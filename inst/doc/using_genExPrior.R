## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(fig.width = 7, fig.height = 5)

## ------------------------------------------------------------------------
library(devtools)
load_all()
library(exPrior)

## ------------------------------------------------------------------------
exdata = data.frame(val = c(c(-2,-3,-4), c(-2,-1), c(-6,-7,-2,-3)), 
                    site_id = c(rep('S1',3), rep('S2',2), rep('S3',4))) 
exdata
theta = seq(from=-10, to=10, by=0.1)

## ------------------------------------------------------------------------
  resExPrior = genExPrior(exdata = exdata, theta = theta)

## ------------------------------------------------------------------------
    plotHyperDist(resExPrior)

## ------------------------------------------------------------------------
    plotExPrior(resExPrior, plotExData = TRUE)

