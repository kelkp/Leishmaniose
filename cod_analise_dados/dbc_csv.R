library("read.dbc")


dbcdbf <- function(rawDir, convertedDir, file) {
  # reads dbc file
  x <- read.dbc(paste(rawDir, file, sep=""))
  # write it to csv
  write.csv(x, file=paste(convertedDir, file, ".csv", sep=""))
}

args = commandArgs(trailingOnly=TRUE)
try(dbcdbf(args[1], args[2], args[3]), TRUE)
