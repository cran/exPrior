## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(fig.width = 7, fig.height = 5)

## ------------------------------------------------------------------------
library(devtools)
load_all()
library(exPrior)

## ------------------------------------------------------------------------
exdata_spatial <- data.frame("x" = sample(seq(0, 1, 0.01), 22),
                               "y" = sample(seq(0, 1, 0.01), 22),
                               "val" = c(-2.5020, -1.9410, -3.0240, -2.5929, -2.4292, -3.0682,
                                         -2.9953, -2.8178, -2.7236, -1.9657, -2.6567, -2.4977,
                                         -1.1583, -3.0637, -1.6788, -3.5102, -2.3866, -3.4092,
                                         -3.5907, -3.2470, -4.1272, -3.5717),
                               "site_id" = c(rep("S1", 10), rep("S2", 5), rep("S3", 7)))

## ------------------------------------------------------------------------
exdata_spatial

## ------------------------------------------------------------------------
theta <- seq(from=-10, to=10, by=0.1)
resExPrior = genExPrior(exdata=exdata_spatial, theta=theta)
plotExPrior(resExPrior, plotExData=TRUE)

## ------------------------------------------------------------------------
resExPrior_spatial = genExPrior(exdata=exdata_spatial, theta=theta, spatialCoordinates=TRUE)
plotExPrior(resExPrior_spatial, plotExData=TRUE)

