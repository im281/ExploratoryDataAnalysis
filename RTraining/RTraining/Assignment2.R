#read data
PeptideData <- read.csv("~/Rdata/RTraining/RTraining/PeptideData.csv", stringsAsFactors=FALSE)

#read data
PeptideMetaData <- read.csv("~/Rdata/RTraining/RTraining/PeptideMetadata.csv", stringsAsFactors=FALSE)

#merge the data
pepMerge <- merge(
  x=PeptideData,
  y=PeptideMetaData,
  by = "Mass_Tag_ID")