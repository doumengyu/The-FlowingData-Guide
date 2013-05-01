### Heatmap
bball <- read.csv("http://datasets.flowingdata.com/ppg2008.csv", header=TRUE)

### Chernoff
library(aplpack)
bball <- read.csv("http://datasets.flowingdata.com/ppg2008.csv", header=TRUE)
bball[1:5,]
faces(bball[,2:16])
faces(bball[,2:16], labels=bball$Name)