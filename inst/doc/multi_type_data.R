## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(fig.width = 7, fig.height = 5)

## ------------------------------------------------------------------------
library(devtools)
load_all()
library(exPrior)

## ------------------------------------------------------------------------
exdata_S1 = data.frame(val=c(2,4), site_id=rep('S1',2), type=c('bound.min','bound.max'))
exdata_S2 = data.frame(val=c(2,0.1), site_id=rep('S2',2), type=c('moment.1','moment.2'))
exdata_S3 = data.frame(val=c(2,3,4), site_id=rep('S3',3), type=c('meas','meas','meas'))
exdata_multitype <- rbind(exdata_S1, exdata_S2, exdata_S3)
exdata_multitype
theta = seq(from=-10, to=10, by=0.1)

## ------------------------------------------------------------------------
resExPrior = genExPrior(exdata = exdata_multitype, theta = theta)

## ------------------------------------------------------------------------
plotHyperDist(resExPrior)

## ------------------------------------------------------------------------
plotExPrior(resExPrior, plotExData = FALSE)

