#!/usr/bin/env Rscript
bd <- getwd()
files <- dir(bd, full.names=TRUE, recursive=TRUE)
nname <- paste(dirname(files), " - ", basename(files), sep="")
file.rename(files, nname)
