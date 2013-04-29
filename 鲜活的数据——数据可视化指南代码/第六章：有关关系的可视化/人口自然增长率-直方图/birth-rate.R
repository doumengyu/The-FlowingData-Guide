# Load the data
birth <- read.csv("http://datasets.flowingdata.com/birth-rate.csv", sep=",", header=TRUE)

# Histogram
hist(birth$X2008)
hist(birth$X2008, breaks=5)
hist(birth$X2008, breaks=20)