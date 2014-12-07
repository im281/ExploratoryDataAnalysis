Peptides <- read.csv("~/Rdata/RTraining/RTraining/Peptides.csv")

#show first few rows
head(Peptides)

#show last few rows
tail(Peptides)

#show $columns
str(Peptides)

#show all rows 1st column
Peptides[,1]

#show all columns 1st row
Peptides[1,]

#show column names
colnames(Peptides)

#show row names
rownames(Peptides)

#plot histogram of control #1
hist(Peptides[,5], breaks= 100)


x <- 5
x<-c(x,6,10,2)
rm(x)

library(psych)
require(psych)

describe(Peptides)
pairs.panels(Peptides)

pairs.panels(Peptides[,5:10])


rowname(Peptides) <- Peptides[,1]

#remove protein identifiers

Peptides[1:5,1:5]

Peptides <- Peptides[,-2]

