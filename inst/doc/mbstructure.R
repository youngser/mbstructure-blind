## ----setup, include=FALSE, results='asis'--------------------------------
library(knitr)
knitr::opts_chunk$set(echo=TRUE, eval=FALSE,warning=FALSE)

opts_knit$set(aliases=c(h='fig.height', w='fig.width', cap='fig.cap', scap='fig.scap'))                                                                               
opts_knit$set(eval.after = c('fig.cap','fig.scap'))                                                                            
knit_hooks$set(document = function(x) {                                                                                        
          gsub('(\\\\end\\{knitrout\\}[\n]+)', '\\1\\\\noindent ', x)                                                                  
          })

 fn = local({
   i = 0
   function(x) {
     i <<- i + 1
#     paste('Figure ', i, ': ', x, sep = '')
     paste('', '', x, sep = '')
   }
 })


suppressMessages(library(ggplot2))
suppressMessages(library(igraph))
suppressMessages(library(Matrix))
suppressMessages(library(lattice))
suppressMessages(library(mclust))
suppressMessages(library(RColorBrewer))
suppressMessages(library(packcircles))
suppressMessages(library(mvtnorm))
suppressMessages(library(printr))
suppressMessages(library(xtable))


## ----echo=TRUE,eval=FALSE------------------------------------------------
#  install.packages("http://www.cis.jhu.edu/~parky/MBstructure/mbstructure_0.1.0.tar.gz",type="source",method="wget")

## ----echo=TRUE-----------------------------------------------------------
#  require(devtools)
#  devtools::install_github("youngser/mbstructure")

## ----demo, eval=FALSE----------------------------------------------------
#  library(mbstructure)
#  
#  # Figure 2 in Section 2
#  demo(sec2)
#  
#  # Figures 3, 5, 6, 7 and Tables 1 & 7 in Section 3
#  demo(sec3)
#  
#  # Figures 8, 9, 10, 11, 12, 13 in Section 4
#  demo(sec4) # Warning: This takes several minutes to run on my laptop!
#  
#  # Figure 14 in Section 5.1.1
#  demo(sec511) # Warning: This takes about half an hour to run on my laptop!
#  
#  # Figure 15 in Section 5.1.2
#  demo(sec512) # Warning: This takes a few minutes to run on my laptop!
#  
#  # Figure 16 in Section 5.1.4
#  demo(sec514) # Warning: This takes a few minutes to run on my laptop!

## ----vn,echo=TRUE, eval=TRUE---------------------------------------------
library(help='mbstructure')
sessionInfo()

