### Parallel Coordinates Plot
education <- read.csv("http://datasets.flowingdata.com/education.csv", header=TRUE)
education[1:10,]

### Multidimensional scaling
ed.dis <- dist(education[,2:7], method="euclidean")
ed.mds <- cmdscale(ed.dis)
x <- ed.mds[,1]
y <- ed.mds[,2]
plot(x,y)

plot(x, y, type="n")
text(x, y, labels=education$state)
text(x, y, labels=education$state, col=dropout_colors)
text(x, y, labels=education$state, col=reading_colors)

# Clustering
#library(mclust)
#ed.mclust <- Mclust(ed.mds)
#par(mfrow=c(2,2))
#plot(ed.mclust, data=ed.mds)