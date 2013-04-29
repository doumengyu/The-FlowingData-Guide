# Load the data
crime <- read.csv('http://datasets.flowingdata.com/crimeRatesByState2005.csv', sep=",", header=TRUE)

# Remove US total and DC
crime2 <- crime[crime$state != "District of Columbia",]
crime2 <- crime2[crime2$state != "United States",]

#symbols函数来画气泡图。
radius <- sqrt(crime2$population/pi)
#inches参数是最大圆的大小，默认是1英寸。fg参数是圆形的边框颜色，bg参数是圆形填充色。
symbols(crime2$murder, crime2$burglary, circles=radius, inches=0.35, fg="white", bg="red", xlab="Murder Rate", ylab="Burglary Rate")
#为每个圆添加标签，其中cex控制文本的大小。
text(crime2$murder, crime2$burglary, crime2$state, cex=0.5)

