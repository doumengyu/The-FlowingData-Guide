subscribers <- read.csv("http://datasets.flowingdata.com/flowingdata_subscribers.csv")

# plot函数默认的类型就是点状类型(p)
# plot(subscribers$Subscribers, type="p",ylim=c(0,30000), xlab="Day", ylab="Subscribers")

plot(subscribers$Subscribers, type="h",ylim=c(0,30000), xlab="Day", ylab="Subscribers")
points(subscribers$Subscribers, pch = 19, col="black")  # pch指点的大小