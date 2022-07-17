#install.packages("read.dbc") You need this package
library("read.dbc")
library(openxlsx)
library(stringr)
setwd(dir ="G:/Meu Drive/Colab/Lab_IV/Leishmaniose/cod_analise_dados")
main_path<-"G:/Meu Drive/Colab/Lab_IV/Leishmaniose/cod_analise_dados/Out/"
dbc2dbf <- function(rawDir, convertedDir, file) {
  # reads dbc file
  x <- read.dbc(paste(rawDir, file, sep=""))
  # write it to csv
  #write.csv(x, file = paste(convertedDir, file, ".csv", sep=""))
  cnae <- str_sub(file, 0, 8)
  write.xlsx(x, paste0(main_path,cnae,".xlsx"),col.names=TRUE, row.names = TRUE)
}

args = commandArgs(trailingOnly=TRUE)
try(dbc2dbf(args[1], args[2], args[3]), TRUE)