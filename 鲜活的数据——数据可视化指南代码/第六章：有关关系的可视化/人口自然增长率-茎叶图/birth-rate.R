# Load the data
birth <- read.csv("http://datasets.flowingdata.com/birth-rate.csv", sep=",", header=TRUE)

# Stem and leaf
stem(birth$X2008)