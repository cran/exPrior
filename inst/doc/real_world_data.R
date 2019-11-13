## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(fig.width = 7, fig.height = 5)

## ------------------------------------------------------------------------
library(devtools)
load_all()
library(exPrior)

## ------------------------------------------------------------------------
load(file="../data/df_porosity.rda")

## ------------------------------------------------------------------------
resExPrior = genExPrior(exdata = df_porosity, theta = seq(from=0, to=1, by=0.01))

## ------------------------------------------------------------------------
plotHyperDist(resExPrior)

## ------------------------------------------------------------------------
plotExPrior(resExPrior, plotExData = TRUE)

