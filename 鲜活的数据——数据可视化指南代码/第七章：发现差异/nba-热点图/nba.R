### Heatmap
bball <- read.csv("http://datasets.flowingdata.com/ppg2008.csv", header=TRUE)

# Ordering
bball <- bball[order(bball$PTS),]
bball_byfgp <- bball[order(bball$FGP, decreasing=TRUE),]

row.names(bball) <- bball$Name
bball <- bball[,2:20]
bball_matrix <- data.matrix(bball)

bball_heatmap <- heatmap(bball_matrix, Rowv=NA, Colv=NA, col = cm.colors(256), scale="column", margins=c(5,10))
bball_heatmap <- heatmap(bball_matrix, Rowv=NA, Colv=NA, col = heat.colors(256), scale="column", margins=c(5,10))

# Custom colors
red_colors <- c("#ffd3cd", "#ffc4bc", "#ffb5ab", "#ffa69a", "#ff9789", "#ff8978", "#ff7a67", "#ff6b56", "#ff5c45", "#ff4d34")
bball_heatmap <- heatmap(bball_matrix, Rowv=NA, Colv=NA, col = red_colors, scale="column", margins=c(5,10))

library(RColorBrewer)
bball_heatmap <- heatmap(bball_matrix, Rowv=NA, Colv=NA, col = brewer.pal(9, "Blues"), scale="column", margins=c(5,10))