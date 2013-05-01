### Parallel Coordinates Plot
education <- read.csv("http://datasets.flowingdata.com/education.csv", header=TRUE)
education[1:10,]

library(lattice)
parallel(education)
parallel(education, horizontal.axis=FALSE)
parallel(education[,2:7], horizontal.axis=FALSE)
parallel(education[,2:7], horizontal.axis=FALSE, col="#000000")

# Quartiles
summary(education)

# Color by reading SAT
reading_colors <- c()
for (i in 1:length(education$state)) {
	
	if (education$reading[i] > 523) {
		col <- "#000000"	
	} else {
		col <- "#cccccc"	
	}
	reading_colors <- c(reading_colors, col)
}
parallel(education[,2:7], horizontal.axis=FALSE, col=reading_colors)

# Color by dropout rate
dropout_colors <- c()
for (i in 1:length(education$state)) {
	
	if (education$dropout_rate[i] > 5.3) {
		c <- "#000000"	
	} else {
		c <- "#cccccc"	
	}
	dropout_colors <- c(dropout_colors, c)
}
parallel(education[,2:7], horizontal.axis=FALSE, col=dropout_colors)