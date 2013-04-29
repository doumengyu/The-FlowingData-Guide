# Load the data
crime <- read.csv('http://datasets.flowingdata.com/crimeRatesByState2005.csv', sep=",", header=TRUE)

# Remove US total and DC
crime2 <- crime[crime$state != "District of Columbia",]
crime2 <- crime2[crime2$state != "United States",]


# Scatterplot for murder and burglary
#plot(crime$murder, crime$burglary)
plot(crime2$murder, crime2$burglary)
plot(crime2$murder, crime2$burglary, xlim=c(0,10), ylim=c(0, 1200))

# Scatterplot with loess smoother
scatter.smooth(crime2$murder, crime2$burglary, xlim=c(0,10), ylim=c(0, 1200))