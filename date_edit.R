install.packages("tidyverse")
install.packages("tibble")
install.packages("installr")
library(tidyverse)
library(stringr)
library(tibble)
library(dplyr)
list.files()

a <- readxl::read_excel(path = "Alaska.xlsx", sheet = 1)
head(a)

str(a)

#goal make character string of year and month
yr <- as.character(a$year)
mo <- as.character(a$month)
mo <- str_c("0",mo, sep = "")

yr_mo <- str_c(yr,mo,sep = "-")
head(yr_mo)

a1 <-  bind_cols(a, yr_mo)
head(a1)
a1 <- rename(a1, date = ...9 )

write.table(a1, file = "alaska_edit.tab", sep = "\t", row.names = TRUE, col.names = TRUE)
###################################################################
library(tibble)
p <- readxl::read_excel(path = "Peru.xlsx", sheet = 1)
head(p)

str(p)
write.table(a1, file = "Peru_edit.tab", sep = "\t", row.names = TRUE, col.names = TRUE)

###################################################################
library(tibble)
g <- read.csv("GOM.csv")
head(g)

str(g)

#goal make character string of year and month
yrg <- as.character(g$Year)
mog <- as.character(g$Month)
dag <- as.character(g$Day)
mog <- str_c("0",mog, sep = "")

yr_mo_dag <- str_c(yrg,mog,dag,sep = "-")
head(yr_mo_dag)

g1 <-  bind_cols(g, yr_mo_dag)
head(a1)
g1 <- rename(g1, date = ...30 )

write.table(a1, file = "GOM_edit.tab", sep = "\t", row.names = TRUE, col.names = TRUE)

