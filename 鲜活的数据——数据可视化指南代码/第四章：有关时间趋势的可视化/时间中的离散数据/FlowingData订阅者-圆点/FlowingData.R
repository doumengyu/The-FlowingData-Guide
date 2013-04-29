subscribers <- read.csv("http://datasets.flowingdata.com/flowingdata_subscribers.csv")

# plot函数默认的类型就是点状类型(p)
plot(subscribers$Subscribers, type="p",ylim=c(0,30000), xlab="Day", ylab="Subscribers")

#类型为h说明要画的是带有高密度的垂直线的散点图
#plot(subscribers$Subscribers, type="h",ylim=c(0,30000), xlab="Day", ylab="Subscribers")
points(subscribers$Subscribers, pch = 19, col="black")  # pch指点的大小