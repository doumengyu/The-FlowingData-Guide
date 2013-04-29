# Load the data
crime <- read.csv('http://datasets.flowingdata.com/crimeRatesByState2005.csv', sep=",", header=TRUE)

# Remove US total and DC
crime2 <- crime[crime$state != "District of Columbia",]
crime2 <- crime2[crime2$state != "United States",]

# Scatterplot matrix
plot(crime2[,2:9])

# Scatterplot matrix with loess
pairs(crime2[,2:9], panel=panel.smooth)