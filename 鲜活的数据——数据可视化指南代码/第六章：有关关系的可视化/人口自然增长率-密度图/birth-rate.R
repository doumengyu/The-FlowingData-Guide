# Load the data
birth <- read.csv("http://datasets.flowingdata.com/birth-rate.csv", sep=",", header=TRUE)

# Density plot
birth2008 <- birth$X2008[!is.na(birth$X2008)]
d2008 <- density(birth2008)
plot(d2008)

# Filled density plot
plot(d2008, type="n")
polygon(d2008, col="#821122", border="#cccccc")

# Storing data, 
# 用R生成的点集数据，存成文本文件，然后用与其他的统计软件画图。
#d2008frame <- data.frame(d2008$x, d2008$y)
#write.table(d2008frame, "testing.txt", sep="\t")
#write.table(d2008frame, "testing.txt", sep="\t", row.names=FALSE)

# Both
#library(lattice)
#histogram(birth$X2008, breaks=10)
#lines(d2008)